import { Injectable } from '@angular/core';
import { IGraphData } from '../interfaces/igraph-data';
import { IGraphSeriesData } from '../interfaces/igraph-series-data';
import { IProduct } from '../interfaces/iproduct';
import { mean, std } from 'mathjs';

@Injectable({
  providedIn: 'root'
})
export class GraphDataParsingService {

  constructor() { }

  // WARNING: ONLY FOR TESTING / WHEN ABSOLUTELY NEEDED
  // BETTER TO USE SPECIFIC QUERIES THAT RETURN RELEVANT DATA!!!

  // obtain chart data from product list
  data_get(in_plist: IProduct[], type: string): IGraphData[] {
    let chartData: IGraphData[] = [];
    let dataSet: IGraphData = {"name": "", "series": []};
    let series: IGraphSeriesData = {"name": "", "value": 0};
    
    // loop through entire plist, each loop is 
    // for each individual product
    for(let i=0; i<in_plist.length; i++) {
      dataSet.series = [];
      dataSet.name = in_plist[i].product_name;
      
      // loop through series (each individual sale)
      for(let j=0; j<in_plist[i].productYearlyData.length; j++) {
        series.name = in_plist[i].productYearlyData[j].year.substr(0, 4);
        
        if(type == "units_sold") series.value = in_plist[i].productYearlyData[j].units_sold;
        else if(type == "production_cost") series.value = in_plist[i].productYearlyData[j].production_cost;
        else if(type == "distribution_cost") series.value = in_plist[i].productYearlyData[j].distribution_cost;
        else if(type == "retail_price") series.value = in_plist[i].productYearlyData[j].retail_price;
        else if(type == "revenue") series.value = ( in_plist[i].productYearlyData[j].retail_price * in_plist[i].productYearlyData[j].units_sold );
        else if(type == "profit") series.value = ( ( in_plist[i].productYearlyData[j].retail_price * in_plist[i].productYearlyData[j].units_sold ) -
                                                     in_plist[i].productYearlyData[j].distribution_cost * in_plist[i].productYearlyData[j].units_sold )
        else return [];
        dataSet.series.push(JSON.parse(JSON.stringify(series)));
      }
      chartData.push(JSON.parse(JSON.stringify(dataSet)));
    }
    chartData = this.filter_data(chartData);
    
    return chartData;
  }

  // sort through data and find items with highest profit
  filter_data(chartData: IGraphData[], invert: boolean, splice: number = -1): IGraphData[] {
    // go through chartData array and find 3 data sets with highest value
    const dataMap = new Map();
    for(let i=0; i<chartData.length; i++) {
      let numset: number[] = [];
      for(let j=0; j<chartData[i].series.length; j++) {
        numset.push(chartData[i].series[j].value);
      }
      dataMap.set(this.adjust_mean(numset), i); // calculate mean
    }

    // sort either as ascending or descending
    if(invert)
      var sortedMap = new Map([...dataMap].sort().reverse());
    else
    var sortedMap = new Map([...dataMap].sort());

    if(splice>0) {
      const iterator = sortedMap.values();
      // iterate "splice" times, these are the top/bottom "splice" values depending on sort order
      // set values into new IGraphData and overwrite old IGraphData object
      let newGSet: IGraphData[] = [];
      for(let i=0; i<3; i++) {
        newGSet.push(chartData[parseInt(iterator.next().value)]);
      }
      chartData = newGSet;
    }
    return chartData;
  }

  adjust_mean(numset: number[]): number {
    // return mean if set contains more than the allowed amount of outliers
    // otherwise, adjust data set to try and more accurately represent data set
    // as of now, only 1 outlier allowed!!!
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

  // set the min and max y-axis values for items going into the graph to make it more readable
  setScale(chartData: IGraphData[]): void {
    let minValue: number = chartData[0].series[0].value;
    let maxValue: number = chartData[0].series[0].value;
    for(let i=0; i<chartData.length; i++) {
      for(let j=0; j<chartData[i].series.length; j++) {
        if(i==0) continue; // skip first value of entire set
        if(minValue > chartData[i].series[j].value) minValue = chartData[i].series[j].value;
        if(maxValue < chartData[i].series[j].value) maxValue = chartData[i].series[j].value;
      }
    }
    this.yScaleMax = (maxValue + maxValue/7);
    this.yScaleMin = (minValue - minValue/7);
  }
}
