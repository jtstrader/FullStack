import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Subscription } from 'rxjs';
import { IProduct } from '../interfaces/iproduct';
import { ProductService } from '../services/product.service';

@Component({
  selector: 'app-information',
  templateUrl: './information.component.html',
  styleUrls: ['./information.component.css']
})
export class InformationComponent implements OnInit {

  constructor(private productService: ProductService,
              private route: ActivatedRoute) {
    this.route.params.subscribe( params => this.id = params.id );
  }

  id!: number;
  sub!: Subscription;
  product: IProduct | undefined;
  errorMessage: string = "";

  ngOnInit(): void {
    this.sub = this.productService.getProduct(this.id).subscribe({
      next: product => this.product = product,
      error: err => this.errorMessage = err
    });
    console.log(this.id);
  }

}
