import { Component, HostListener, OnInit } from '@angular/core';
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
  pieData_units_sold: IPieChartData[] = [];
  pieData_profits: IPieChartData[] = [];
  view!: [number, number];
  legend: boolean = true
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
        this.pieData_units_sold = this.gdParser.pie_chart_data_get(this.plist, "units_sold", true, 5)
        this.pieData_profits = this.gdParser.pie_chart_data_get(this.plist, "profit");
        this.setChartSize();
      },
      error: err => this.errorMessage = err
    });

    console.log();
  }

  @HostListener('window:resize', ['$event'])
  screenSizeChanged(event: any): void {
    let height: number = event.target.innerHeight;
    let width: number = event.target.innerWidth;
    this.legend = ( (height  > 500) && (width > 1500) );
    this.setChartSize();
  }

  setChartSize(): void {
    let pieChartProperties: any = document.querySelector('.large-pie-chart');
    let style = getComputedStyle(pieChartProperties);
    this.view = [parseInt(style.width), parseInt(style.height)];
  }

}
