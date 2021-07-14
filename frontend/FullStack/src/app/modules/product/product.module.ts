import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { ProductListComponent } from 'src/app/product-list/product-list.component';
import { InformationComponent } from 'src/app/information/information.component';
import { GlobalProductStatisticsComponent } from 'src/app/global-product-statistics/global-product-statistics.component';
import { SharedModule } from '../shared/shared.module';
import { RouterModule } from '@angular/router';



@NgModule({
  declarations: [
    ProductListComponent,
    InformationComponent,
    GlobalProductStatisticsComponent
  ],
  imports: [
    CommonModule,
    SharedModule,
    RouterModule.forChild([
      { path: 'products', component: ProductListComponent },
      { path: 'products/:id', component: InformationComponent },
      { path: 'gloprodustats', component: GlobalProductStatisticsComponent }
    ])
  ]
})
export class ProductModule { }
