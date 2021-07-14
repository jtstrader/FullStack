import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { GetLatestRetailPricePipe } from 'src/app/pipes/get-latest-retail-price.pipe';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { MatCardModule } from '@angular/material/card';
import { NgxGaugeModule } from 'ngx-gauge';
import { NgxChartsModule } from '@swimlane/ngx-charts';
import { HttpClientModule } from '@angular/common/http';



@NgModule({
  declarations: [
    GetLatestRetailPricePipe
  ],
  imports: [
    CommonModule
  ],
  exports: [
    CommonModule,
    FormsModule,
    GetLatestRetailPricePipe,
    BrowserAnimationsModule,
    MatCardModule,
    NgxGaugeModule,
    NgxChartsModule,
    HttpClientModule
  ]
})
export class SharedModule {

}
