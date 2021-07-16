import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { SharedModule } from '../shared/shared.module';
import { RouterModule } from '@angular/router';

import { ProductListComponent } from 'src/app-default/product-list/product-list.component';
import { ProductInformationComponent } from 'src/app-default/product-information/product-information.component';
import { GlobalProductStatisticsComponent } from 'src/app-default/global-product-statistics/global-product-statistics.component';
import { ProductSuggestionFormComponent } from 'src/app-default/product-suggestion-form/product-suggestion-form.component';
import { ProposalListComponent } from 'src/app-default/proposal-list/proposal-list.component';
import { ProposalInformationComponent } from 'src/app-default/proposal-information/proposal-information.component';


@NgModule({
  declarations: [
    ProductListComponent,
    ProductInformationComponent,
    GlobalProductStatisticsComponent,
    ProductSuggestionFormComponent,
    ProposalListComponent,
    ProposalInformationComponent
  ],
  imports: [
    CommonModule,
    SharedModule,
    RouterModule.forChild([
      { path: 'products', component: ProductListComponent },
      { path: 'products/:id', component: ProductInformationComponent },
      { path: 'gloprodustats', component: GlobalProductStatisticsComponent },
      { path: 'suggestionprodu', component: ProductSuggestionFormComponent },
      { path: 'usersubs', component: ProposalListComponent },
      { path: 'usersubs/:id', component: ProposalInformationComponent }
    ])
  ]
})
export class ProductModule { }
