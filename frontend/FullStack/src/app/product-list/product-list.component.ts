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

  // testing
  title: string = "title"

  constructor(private productService: ProductService) { }

  sub!: Subscription;
  plist: IProduct[] | undefined;
  errorMessage: string | undefined;

  ngOnInit(): void {
    this.sub = this.productService.getProductList().subscribe({
      next: plist => this.plist = plist,
      error: err => this.errorMessage = err
    });
  }
}
