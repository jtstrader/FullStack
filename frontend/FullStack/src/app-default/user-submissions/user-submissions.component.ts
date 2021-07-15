import { Component, OnInit } from '@angular/core';
import { Subscription } from 'rxjs';
import { IProduct } from '../interfaces/iproduct';
import { IProductProposal } from '../interfaces/iproduct-proposal';
import { ProductProposalServiceService } from '../services/product-proposal-service.service';

@Component({
  selector: 'app-user-submissions',
  templateUrl: './user-submissions.component.html',
  styleUrls: ['./user-submissions.component.css']
})
export class UserSubmissionsComponent implements OnInit {

  constructor(private productProposalService: ProductProposalServiceService,
    ) { }

sub!: Subscription;
plist: IProductProposal[] | undefined;
filteredPList: IProductProposal[] = [];
errorMessage: string | undefined;

// filter
private _filterType: string = "Name";
get filterType(): string {
  return this._filterType;
}
set filterType(value: string) {
  this._filterType = value;
  this.filteredPList = this.filterList(this._filter, this._filterType);
}

private _filter: string = "";
get filter(): string {
  return this._filter;
}
set filter(value: string) {
  console.log(this._filterType)
  this._filter = value;
  this.filteredPList = this.filterList(this._filter, this._filterType);
}

  filterList(filter: string, filterType: string = "Name"): IProductProposal[] {
    filter = filter.toLocaleLowerCase();
    if(this.plist != undefined) {
      return this.plist.filter((product: IProductProposal) =>
        product.product_name.toLocaleLowerCase().includes(filter));
    }
    return [];
  }

  ngOnInit(): void {
    this.sub = this.productProposalService.getProposalsList().subscribe({
      next: plist => { this.plist = plist; this.filteredPList = this.plist },
      error: err => this.errorMessage = err
    });
  }
}
