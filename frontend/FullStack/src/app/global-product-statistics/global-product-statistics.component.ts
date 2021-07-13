import { Component, OnInit } from '@angular/core';
import { LegendPosition } from '@swimlane/ngx-charts';
import { Subscription } from 'rxjs';
import { IPieChartData } from '../interfaces/GraphDataInterfaces/ipie-chart-data';
import { IProduct } from '../interfaces/iproduct';
import { GraphDataParsingService } from '../services/graph-data-parsing.service';
import { ProductService } from '../services/product.service';

@Component({
  selector: 'app-global-product-statistics',
  templateUrl: './global-product-statistics.component.html',
  styleUrls: ['./global-product-statistics.component.css']
})
export class GlobalProductStatisticsComponent implements OnInit {

  constructor(private productService: ProductService,
              private gdParser: GraphDataParsingService) { }

  sub!: Subscription;
  plist!: IProduct[];
  errorMessage!: string;
  type: string = "Units Sold"

  // pie chart data
  pieData: IPieChartData[] = [];
  view: [number, number] = [835, 350];
  legend: boolean = true;
  showLabels: boolean = false;
  animations: boolean = true;
  gradient: boolean = false;

  legendPosition: LegendPosition = LegendPosition.Right;

  colorScheme = {
    domain: ['#5AA454', '#E44D25', '#CFC0BB', '#7aa3e5', '#a8385d', '#aae3f5']
  };

  ngOnInit(): void {
    this.sub = this.productService.getProductList().subscribe({
      next: plist => {
        this.plist = plist; 
        this.pieData = this.gdParser.pie_chart_data_get(this.plist, "units_sold", true, 14)
      },
      error: err => this.errorMessage = err
    });
  }

}
