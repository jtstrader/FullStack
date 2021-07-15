import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Subscription } from 'rxjs';
import { ILineGraphData } from '../interfaces/GraphDataInterfaces/iline-graph-data';
import { ILineGraphDataList } from '../interfaces/GraphDataInterfaces/iline-graph-data-list';
import { IProduct } from '../interfaces/iproduct';
import { GraphDataParsingService } from '../services/graph-data-parsing.service';
import { ProductService } from '../services/product.service';

@Component({
  selector: 'app-information',
  templateUrl: './information.component.html',
  styleUrls: ['./information.component.css']
})
export class InformationComponent implements OnInit {

  constructor(private productService: ProductService,
              private gdParser: GraphDataParsingService,
              private route: ActivatedRoute) {
    this.route.params.subscribe( params => this.id = params.id );
  }

  id!: number;
  sub!: Subscription;
  product: IProduct | undefined;
  errorMessage: string = "";

  /////////////////////////////////////////////////////////////////////////////
  // line chart options
  chartList: ILineGraphDataList[] = [];
  view: [number, number] = [835, 350];
  legend: boolean = false;
  showLabels: boolean = true;
  animations: boolean = true;
  xAxis: boolean = true;
  yAxis: boolean = true;
  showYAxisLabel: boolean = true;
  showXAxisLabel: boolean = true;
  xAxisLabel: string = 'Year';
  yAxisLabel: string = 'Units Sold';
  yScaleMin: number[] = [];
  yScaleMax: number[] = [];

  schemeSet = [
    { domain: ['#5AA454'] }, { domain: ['#E44D25'] }, { domain: ['#BDA0AA'] }, { domain: ['#7aa3e5'] }, { domain: ['#a8385d'] }, { domain: ['#aae3d3']} 
  ]
  /////////////////////////////////////////////////////////////////////////////
  

  ngOnInit(): void {
    this.sub = this.productService.getProduct(this.id).subscribe({
      next: product => {
        this.product = product;
        this.chartList = this.gdParser.line_chart_get_all_data_single(this.product);
        this.chartList.forEach(element => {
          let scaleArray: number[] = this.gdParser.line_chart_getScale(element.dSet);
          this.yScaleMax.push(scaleArray[0]);
          this.yScaleMin.push(scaleArray[1]);
        });
      },
      error: err => this.errorMessage = err
    });
    console.log(this.id);
  }

}
