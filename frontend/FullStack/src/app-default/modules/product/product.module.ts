import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { ProductListComponent } from 'src/app-default/product-list/product-list.component';
import { InformationComponent } from 'src/app-default/information/information.component';
import { GlobalProductStatisticsComponent } from 'src/app-default/global-product-statistics/global-product-statistics.component';
import { SharedModule } from '../shared/shared.module';
import { RouterModule } from '@angular/router';
import { ProductSuggestionFormComponent } from 'src/app-default/product-suggestion-form/product-suggestion-form.component';



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
      { path: 'gloprodustats', component: GlobalProductStatisticsComponent },
      { path: 'suggestionprodu', component: ProductSuggestionFormComponent }
    ])
  ]
})
export class ProductModule { }
