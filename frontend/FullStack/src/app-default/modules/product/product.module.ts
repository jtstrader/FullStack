import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { SharedModule } from '../shared/shared.module';
import { RouterModule } from '@angular/router';

import { ProductListComponent } from 'src/app-default/product-list/product-list.component';
import { ProductInformationComponent } from 'src/app-default/product-information/product-information.component';
import { GlobalProductStatisticsComponent } from 'src/app-default/global-product-statistics/global-product-statistics.component';
import { ProductSuggestionFormComponent } from 'src/app-default/product-suggestion-form/product-suggestion-form.component';
import { UserSubmissionsComponent } from 'src/app-default/user-submissions/user-submissions.component';


@NgModule({
  declarations: [
    ProductListComponent,
    ProductInformationComponent,
    GlobalProductStatisticsComponent,
    ProductSuggestionFormComponent,
    UserSubmissionsComponent
  ],
  imports: [
    CommonModule,
    SharedModule,
    RouterModule.forChild([
      { path: 'products', component: ProductListComponent },
      { path: 'products/:id', component: ProductInformationComponent },
      { path: 'gloprodustats', component: GlobalProductStatisticsComponent },
      { path: 'suggestionprodu', component: ProductSuggestionFormComponent },
      { path: 'usersubs', component: UserSubmissionsComponent }
    ])
  ]
})
export class ProductModule { }
