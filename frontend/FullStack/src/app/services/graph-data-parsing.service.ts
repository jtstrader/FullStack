import { Injectable } from '@angular/core';
import { ILineGraphData } from '../interfaces/GraphDataInterfaces/iline-graph-data';
import { ILineGraphSeriesData } from '../interfaces/GraphDataInterfaces/iline-graph-series-data';
import { IProduct } from '../interfaces/iproduct';
import { mean, std } from 'mathjs';
import { IPieChartData } from '../interfaces/GraphDataInterfaces/ipie-chart-data';

@Injectable({
  providedIn: 'root'
})
export class GraphDataParsingService {

  constructor() { }

  // WARNING: ONLY FOR TESTING / WHEN ABSOLUTELY NEEDED
  // BETTER TO USE SPECIFIC QUERIES THAT RETURN RELEVANT DATA!!!

  ////////////////////////////////////////////////////////////////////////////////
  //  LINE CHARTS                                                               //
  ////////////////////////////////////////////////////////////////////////////////
  // obtain chart data from product list
  line_chart_data_get(in_plist: IProduct[], type: string, invert: boolean = false, splice: number = -1): ILineGraphData[] {
    let chartData: ILineGraphData[] = [];
    let dataSet: ILineGraphData = {"name": "", "series": []};
    let series: ILineGraphSeriesData = {"name": "", "value": 0};
    
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
    if(splice > 0)
      chartData = this.line_chart_filter_data(chartData, invert, splice);
    
    return chartData;
  }

  // sort through data and find items with highest profit
  line_chart_filter_data(chartData: ILineGraphData[], invert: boolean = false, splice: number = -1): ILineGraphData[] {
    // go through chartData array and find 3 data sets with highest value
    const dataMap = new Map();
    for(let i=0; i<chartData.length; i++) {
      let numset: number[] = [];
      for(let j=0; j<chartData[i].series.length; j++) {
        numset.push(chartData[i].series[j].value);
      }
      dataMap.set(this.line_chart_adjust_mean(numset), i); // calculate mean
    }

    // sort either as ascending or descending
    if(invert)
      var sortedMap = new Map([...dataMap].sort().reverse());
    else
      var sortedMap = new Map([...dataMap].sort());

    if(splice > 0 && splice < sortedMap.size) {
      const iterator = sortedMap.values();
      // iterate "splice" times, these are the top/bottom "splice" values depending on sort order
      // set values into new ILineGraphData and overwrite old ILineGraphData object
      let newGSet: ILineGraphData[] = [];
      for(let i=0; i<splice; i++) {
        newGSet.push(chartData[parseInt(iterator.next().value)]);
      }
      chartData = newGSet;
    }
    return chartData;
  }

  // remove (currently) 1 outlier from list
  line_chart_adjust_mean(numset: number[]): number {
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
  line_chart_getScale(chartData: ILineGraphData[]): number[] {
    let minValue: number = chartData[0].series[0].value;
    let maxValue: number = chartData[0].series[0].value;
    for(let i=0; i<chartData.length; i++) {
      for(let j=0; j<chartData[i].series.length; j++) {
        if(i==0) continue; // skip first value of entire set
        if(minValue > chartData[i].series[j].value) minValue = chartData[i].series[j].value;
        if(maxValue < chartData[i].series[j].value) maxValue = chartData[i].series[j].value;
      }
    }
    // max, min
    return [(maxValue + maxValue/7), (minValue - minValue/7)];
  }
  ////////////////////////////////////////////////////////////////////////////////

  ////////////////////////////////////////////////////////////////////////////////
  //  PIE CHARTS                                                                //
  ////////////////////////////////////////////////////////////////////////////////
  // obtain chart data from product list
  pie_chart_data_get(in_plist: IProduct[], type: string, invert: boolean = false, splice: number = -1, year: string = "YYYY"): IPieChartData[] {
    let pieData: IPieChartData[] = [];

    // seek through list if year value is default and look for greatest year, then gather all relevant information
    if(year == "YYYY") {
      year = "0000";
      in_plist.forEach(dset => {
        dset.productYearlyData.forEach(yearly_set => {
          if(yearly_set.year > year)
            year = yearly_set.year;
        });
      });
    }

    // to confirm that no invalid data is gathered, guarantee that each object contains the specified year before returning
    // it's data point to the array
    for(let i=0; i<in_plist.length; i++) {
      let name: string = in_plist[i].product_name;

      // find the correct year
      for(let j=0; j<in_plist[i].productYearlyData.length; j++) {
        if(in_plist[i].productYearlyData[j].year == year) {
          if(type == "units_sold") pieData.push({"name": name, "value": in_plist[i].productYearlyData[j].units_sold});
          else if(type == "production_cost") pieData.push({"name": name, "value": in_plist[i].productYearlyData[j].production_cost});
          else if(type == "distribution_cost") pieData.push({"name": name, "value": in_plist[i].productYearlyData[j].distribution_cost});
          else if(type == "retail_price") pieData.push({"name": name, "value": in_plist[i].productYearlyData[j].retail_price});
          else if(type == "revenue") pieData.push({"name": name, "value": ( in_plist[i].productYearlyData[j].retail_price * 
                                                                            in_plist[i].productYearlyData[j].units_sold)});
          else if(type == "profit") pieData.push({"name": name, "value": ( ( in_plist[i].productYearlyData[j].retail_price * in_plist[i].productYearlyData[j].units_sold ) -
                                                                          ( in_plist[i].productYearlyData[j].distribution_cost * in_plist[i].productYearlyData[j].units_sold ) )})
      
        }
      }
    }
    if(splice > 0)
      return this.pie_chart_filter_data(pieData, invert, splice);
    return pieData;
  }

  // sort through data and find items with highest profit
  pie_chart_filter_data(pieData: IPieChartData[], invert: boolean = false, splice: number = -1): IPieChartData[] {
    // go through chartData array and find 3 data sets with highest value
    pieData.sort((a, b) => a.value - b.value);
    if(splice > 0 && splice < pieData.length)
      pieData.splice(splice, pieData.length-splice);
    if(invert)
      pieData = pieData.reverse();
    return pieData;
  }

  ////////////////////////////////////////////////////////////////////////////////
}
