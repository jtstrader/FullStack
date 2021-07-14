import { Component, OnInit } from '@angular/core';
import { Subscription } from 'rxjs';
import { IProduct } from '../interfaces/iproduct';
import { ProductService } from '../services/product.service';

@Component({
  selector: 'app-product-list',
  templateUrl: './product-list.component.html',
  styleUrls: ['./product-list.component.css']
})
export class ProductListComponent implements OnInit {

  

  constructor(private productService: ProductService) { }

  sub!: Subscription;
  plist: IProduct[] | undefined;
  filteredPList: IProduct[] = [];
  errorMessage: string | undefined;

  // filter
  private _filter: string = "";
  get filter(): string {
    return this._filter;
  }
  set filter(value: string) {
    this._filter = value;
    this.filteredPList = this.filterList(this._filter);
  }

  filterList(filter: string): IProduct[] {
    filter = filter.toLocaleLowerCase();
    if(this.plist != undefined)
      return this.plist.filter((product: IProduct) =>
        product.product_name.toLocaleLowerCase().includes(filter));
    else return [];
    }

  ngOnInit(): void {
    this.sub = this.productService.getProductList().subscribe({
      next: plist => { this.plist = plist; this.filteredPList = this.plist },
      error: err => this.errorMessage = err
    });
  }
}
