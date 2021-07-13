import { Component, OnInit } from '@angular/core';
import { Subscription } from 'rxjs';
import { IGraphData } from '../interfaces/igraph-data';
import { IProduct } from '../interfaces/iproduct';
import { GraphDataParsingService } from '../services/graph-data-parsing.service';
import { ProductService } from '../services/product.service';

@Component({
  selector: 'app-global-product-statistics',
  templateUrl: './global-product-statistics.component.html',
  styleUrls: ['./global-product-statistics.component.css']
})
export class GlobalProductStatisticsComponent implements OnInit {

  constructor(private productService: ProductService,
              private gdParser: GraphDataParsingService) { }

  sub!: Subscription;
  plist!: IProduct[];
  errorMessage!: string;

  chartData: IGraphData[] = [];

  ngOnInit(): void {
    this.sub = this.productService.getProductList().subscribe({
      next: plist => {
        this.plist = plist; 
        this.chartData = this.gdParser.data_get(this.plist, "units_sold", false)
      },
      error: err => this.errorMessage = err
    });
  }

}
