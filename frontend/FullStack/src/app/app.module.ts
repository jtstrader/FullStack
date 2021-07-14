import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { HttpClientModule } from '@angular/common/http';
import { FormsModule } from '@angular/forms';

// Angular Material and Others
import { MatCardModule } from '@angular/material/card';
import { NgxGaugeModule } from 'ngx-gauge';
import { NgxChartsModule } from '@swimlane/ngx-charts';

// Components
import { AboutComponent } from './about/about.component';
import { ProductListComponent } from './product-list/product-list.component';
import { WelcomeComponent } from './welcome/welcome.component';
import { InformationComponent } from './information/information.component';
import { GlobalProductStatisticsComponent } from './global-product-statistics/global-product-statistics.component';
import { GetLatestRetailPricePipe } from './pipes/get-latest-retail-price.pipe';

@NgModule({
  declarations: [
    AppComponent,
    AboutComponent,
    ProductListComponent,
    WelcomeComponent,
    InformationComponent,
    GlobalProductStatisticsComponent,
    GetLatestRetailPricePipe
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    BrowserAnimationsModule,
    MatCardModule,
    NgxGaugeModule,
    NgxChartsModule,
    HttpClientModule,
    FormsModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
