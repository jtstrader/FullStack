import { Component, OnInit } from '@angular/core';
import { Subscription } from 'rxjs';
import { IProduct } from '../interfaces/iproduct';
import { ProductService } from '../services/product.service';

@Component({
  selector: 'app-global-product-statistics',
  templateUrl: './global-product-statistics.component.html',
  styleUrls: ['./global-product-statistics.component.css']
})
export class GlobalProductStatisticsComponent implements OnInit {

  constructor(private productService: ProductService) { }

  sub!: Subscription;
  plist!: IProduct[];
  errorMessage!: string;

  ngOnInit(): void {
    this.sub = this.productService.getProductList().subscribe({
      next
    });
  }

}
