import { Component, OnInit } from '@angular/core';
import { IProductProposal } from '../interfaces/iproduct-proposal';
import { ProductProposalService } from '../services/product-proposal.service';
import { ProductService } from '../services/product.service';

@Component({
  selector: 'app-product-suggestion-form',
  templateUrl: './product-suggestion-form.component.html',
  styleUrls: ['./product-suggestion-form.component.css']
})
export class ProductSuggestionFormComponent implements OnInit {

  constructor(private productService: ProductService,
              private productProposalService: ProductProposalService) { }


  // getters and setters for two-way binding
  private _product_name_input: string = "";
  get product_name_input(): string {
    return this._product_name_input;
  }
  set product_name_input(newName: string) {
    this._product_name_input = newName;
  }
  private _product_description_input: string = "";
  get product_description_input(): string {
    return this._product_description_input;
  }
  set product_description_input(newDesc: string) {
    this._product_description_input = newDesc;
  }

  ngOnInit(): void {

  }

  postProposal(): void {
    // check if both name and description have been input
    let missing: [boolean, boolean] = [false, false];
    if(this._product_name_input == "") missing[0] = true;
    if(this._product_description_input == "") missing[1] = true;
    if(missing[0]||missing[1]) {
      let error: string = "";
      if(missing[0]) {
        error+="Name";
        if(missing[1]) {
          error+=", Description";
        }
      }
      else if(missing[1]) {
        error+="Description";
      }
      alert(`Can't submit! Missing field: ${error}`)
      return;
    }

    // post request
    let newProposal: IProductProposal = {
      "proposal_id": -1, // id handled by API
      "product_name": this._product_name_input, 
      "product_description": this._product_description_input,
      "comments": [] // zero comments upon creation
    }
    let response: IProductProposal;
    this.productProposalService.postProposal(newProposal).subscribe({
      next: httpResponse => response = httpResponse,
      error: err => {
        console.log(err)
      }
    });
  }
}
