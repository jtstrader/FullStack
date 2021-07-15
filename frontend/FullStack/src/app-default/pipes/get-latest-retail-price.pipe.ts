import { Pipe, PipeTransform } from '@angular/core';
import { IProductYearlyData } from '../interfaces/iproductyearlydata';

@Pipe({
  name: 'getLatestRetailPrice'
})
export class GetLatestRetailPricePipe implements PipeTransform {

  transform(productYearlyData: IProductYearlyData[]): string {
    productYearlyData = productYearlyData.sort((a, b) => parseInt(a.year) - parseInt(b.year)); // sort by year
    return "$"+productYearlyData[productYearlyData.length-1].retail_price.toString();
  }

}
