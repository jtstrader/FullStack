import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { Subscription } from 'rxjs';
import { IProduct } from '../interfaces/iproduct';
import { ProductService } from '../services/product.service';

@Component({
  selector: 'app-product-list',
  templateUrl: './product-list.component.html',
  styleUrls: ['./product-list.component.css']
})
export class ProductListComponent implements OnInit {

  constructor(private productService: ProductService,
              private router: Router) { }

  sub!: Subscription;
  plist: IProduct[] | undefined;
  filteredPList: IProduct[] = [];
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

  filterList(filter: string, filterType: string = "Name"): IProduct[] {
    filter = filter.toLocaleLowerCase();
    if(this.plist != undefined) {
      if(filterType == "Name") {
        return this.plist.filter((product: IProduct) =>
          product.product_name.toLocaleLowerCase().includes(filter));
      }
      else if(filterType == "Category") {
        return this.plist.filter((product: IProduct) =>
          product.category.toLocaleLowerCase().includes(filter));
      }
      else if(filterType == "ACME Rating") {
        if(filter == "") return this.plist;
        let numFilter: number = parseFloat(filter);
        return this.plist.filter((product: IProduct) => 
          product.acme_rating >= numFilter);
      }
      else if(filterType == "User Rating") {
        if(filter == "") return this.plist;
        let numFilter: number = parseFloat(filter);
        return this.plist.filter((product: IProduct) =>
          product.user_rating >= numFilter);
      }
    }
      
    return [];
  }

  gotoInfoPage(id: number | undefined): void {
    this.router.navigate(['/', 'products', id]);
  }

  ngOnInit(): void {
    this.sub = this.productService.getProductList().subscribe({
      next: plist => { this.plist = plist; this.filteredPList = this.plist },
      error: err => this.errorMessage = err
    });
  }
}
