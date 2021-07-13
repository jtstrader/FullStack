import { Component, OnInit } from '@angular/core';
import { MAT_RIPPLE_GLOBAL_OPTIONS } from '@angular/material/core';
import { Subscription } from 'rxjs';
import { IGraphData } from '../interfaces/igraph-data';
import { IGraphSeriesData } from '../interfaces/igraph-series-data';
import { IProduct } from '../interfaces/iproduct';
import { ProductService } from '../services/product.service';
import { mean, std } from 'mathjs';

@Component({
  selector: 'app-welcome',
  templateUrl: './welcome.component.html',
  styleUrls: ['./welcome.component.css']
})
export class WelcomeComponent implements OnInit {

  multi = [];
  view: [number, number] = [835, 300];

  // options
  legend: boolean = true;
  showLabels: boolean = true;
  animations: boolean = true;
  xAxis: boolean = true;
  yAxis: boolean = true;
  showYAxisLabel: boolean = true;
  showXAxisLabel: boolean = true;
  xAxisLabel: string = 'Year';
  yAxisLabel: string = 'Sales';
  timeline: boolean = true;

  colorScheme = {
    domain: ['#5AA454', '#E44D25', '#CFC0BB', '#7aa3e5', '#a8385d', '#aae3f5']
  };
  
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

  constructor(private productService: ProductService) { }

  sub!: Subscription;
  errorMessage: string | undefined;
  plist: IProduct[] | undefined;

  chartData: IGraphData[] = [];

  ngOnInit(): void {
    this.sub = this.productService.getProductList().subscribe({
      next: plist => this.data_get(plist),
      error: err => this.errorMessage = err
    });
  }

  // data is obtained from subscription
  // go through data and perform calculation
  data_get(in_plist: IProduct[]): void {
    let dataSet: IGraphData = {"name": "", "series": []};
    let series: IGraphSeriesData = {"name": "", "value": 0};
    this.plist = in_plist; // set our local variable
    
    // loop through entire plist, each loop is 
    // for each individual product
    for(let i=0; i<this.plist.length; i++) {
      dataSet.series = [];
      dataSet.name = this.plist[i].product_name;
      
      // loop through series (each individual sale)
      for(let j=0; j<this.plist[i].sales.length; j++) {
        series.name = this.plist[i].sales[j].sale_year.substr(0, 4);
        series.value = this.plist[i].sales[j].total_sales;
        dataSet.series.push(JSON.parse(JSON.stringify(series)));
      }
      this.chartData.push(JSON.parse(JSON.stringify(dataSet)));
    }
    this.filter_data();
  }

  // sort through data and find items with highest profit
  filter_data(): void {
    // go through chartData array and find 3 data sets with highest value
    const dataMap = new Map();
    for(let i=0; i<this.chartData.length; i++) {
      let numset: number[] = [];
      for(let j=0; j<this.chartData[i].series.length; j++) {
        numset.push(this.chartData[i].series[j].value);
      }
      dataMap.set(this.adjust_mean(numset), i); // calculate mean
    }
    var sortedMap = new Map([...dataMap].sort().reverse());
    const iterator = sortedMap.values();

    // iterate 3 times, these are the top 3 values
    // set values into new IGraphData and overwrite old IGraphData object
    let newGSet: IGraphData[] = [];
    for(let i=0; i<3; i++) {
      newGSet.push(this.chartData[parseInt(iterator.next().value)]);
    }

    console.log(newGSet);

    this.chartData = newGSet;
  }

  adjust_mean(numset: number[]): number {
    // return mean if set contains more than the allowed amount of outliers
    // otherwise, adjust data set to try and more accurately represent data set
    let setMean: number = mean(numset);
    let setSigma: number = std(numset);
    let outlierIndex = -1;
    for(let i=0; i<numset.length; i++) {
      if((numset[i] > (setMean+3*setSigma) || numset[i] < (setMean-3*setSigma)) && outlierIndex == -1)
        outlierIndex = i;
      else if((numset[i] > (setMean+3*setSigma) || numset[i] < (setMean-3*setSigma)))
        return setMean;
    }
    if(outlierIndex != -1) {
      // adjust set by removing damning outlier
      numset.splice(outlierIndex, 1); // remove outlier
      setMean = mean(numset);
    }
    return setMean;
  }
}
