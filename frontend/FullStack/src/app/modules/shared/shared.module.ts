import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { GetLatestRetailPricePipe } from 'src/app/pipes/get-latest-retail-price.pipe';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { MatCardModule } from '@angular/material/card';
import { MatSelectModule } from '@angular/material/select';
import { NgxGaugeModule } from 'ngx-gauge';
import { NgxChartsModule } from '@swimlane/ngx-charts';
import { HttpClientModule } from '@angular/common/http';
import { MatFormFieldModule } from '@angular/material/form-field';



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
    MatFormFieldModule,
    MatCardModule,
    MatSelectModule,
    NgxGaugeModule,
    NgxChartsModule,
    HttpClientModule
  ]
})
export class SharedModule {

}
