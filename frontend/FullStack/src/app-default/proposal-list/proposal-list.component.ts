import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { Subscription } from 'rxjs';
import { IProductProposal } from '../interfaces/iproduct-proposal';
import { ProductProposalService } from '../services/product-proposal.service';

@Component({
  selector: 'app-user-submissions',
  templateUrl: './proposal-list.component.html',
  styleUrls: ['./proposal-list.component.css']
})
export class ProposalListComponent implements OnInit {

  constructor(private productProposalService: ProductProposalService,
              private router: Router) { }

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
      return this.plist.filter((proposal: IProductProposal) =>
        proposal.product_name.toLocaleLowerCase().includes(filter));
    }
    return [];
  }

  ngOnInit(): void {
    this.sub = this.productProposalService.getProposalsList().subscribe({
      next: plist => { this.plist = plist; this.filteredPList = this.plist },
      error: err => this.errorMessage = err
    });
  }

  gotoProposalInfoPage(id: number): void {
    this.router.navigate(['/', 'usersubs', id])
  }
}
