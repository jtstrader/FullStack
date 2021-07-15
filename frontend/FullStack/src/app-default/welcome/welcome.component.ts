import { Component, OnInit } from '@angular/core';
import { Subscription } from 'rxjs';
import { ILineGraphData } from '../interfaces/GraphDataInterfaces/iline-graph-data';
import { ILineGraphSeriesData } from '../interfaces/GraphDataInterfaces/iline-graph-series-data';
import { IProduct } from '../interfaces/iproduct';
import { ProductService } from '../services/product.service';
import { mean, std } from 'mathjs';
import { GraphDataParsingService } from '../services/graph-data-parsing.service';

@Component({
  selector: 'app-welcome',
  templateUrl: './welcome.component.html',
  styleUrls: ['./welcome.component.css']
})
export class WelcomeComponent implements OnInit {

  constructor(private productService: ProductService,
              private gdParser: GraphDataParsingService) { }

  sub!: Subscription;
  errorMessage: string | undefined;
  plist: IProduct[] | undefined;

  /////////////////////////////////////////////////////////////////////////////
  // ACME's Top 3 Best Sellers!
  // line chart options
  chartData: ILineGraphData[] = [];
  view: [number, number] = [835, 350];
  legend: boolean = true;
  showLabels: boolean = true;
  animations: boolean = true;
  xAxis: boolean = true;
  yAxis: boolean = true;
  showYAxisLabel: boolean = true;
  showXAxisLabel: boolean = true;
  xAxisLabel: string = 'Year';
  yAxisLabel: string = 'Units Sold';
  yScaleMin!: number;
  yScaleMax!: number;

  colorScheme = {
    domain: ['#5AA454', '#E44D25', '#CFC0BB', '#7aa3e5', '#a8385d', '#aae3f5']
  };
  /////////////////////////////////////////////////////////////////////////////

  /////////////////////////////////////////////////////////////////////////////
  // Gauges
  // failure rate gauge (ACME)
  acme_gaugeValue = 72;
  acme_gaugeLabel = "ACME Failure Rate";
  acme_gaugeAppendText = "%";
  acme_gaugeThickness = 8;
  acme_color = 'green';

  // failure rate gauge (HoleBoat)
  hb_gaugeValue = 94;
  hb_gaugeLabel = "HoleBoat Failure Rate";
  hb_gaugeAppendText = "%";
  hb_gaugeThickness = 8;
  hb_color = 'red';
  /////////////////////////////////////////////////////////////////////////////
  

  ngOnInit(): void {
    this.sub = this.productService.getProductList().subscribe({
      next: plist => {
        this.plist = plist; 
        this.chartData = this.gdParser.line_chart_data_get(this.plist, "units_sold", true, 3);
        let scaling: number[] = this.gdParser.line_chart_getScale(this.chartData);
        this.yScaleMax = scaling[0]; this.yScaleMin = scaling[1];
      },
      error: err => this.errorMessage = err
    });
  }
}
