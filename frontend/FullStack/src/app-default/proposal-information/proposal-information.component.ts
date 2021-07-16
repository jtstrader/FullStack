import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Subscription } from 'rxjs';
import { IProductProposal } from '../interfaces/iproduct-proposal';
import { ProductProposalService } from '../services/product-proposal.service';

@Component({
  selector: 'app-proposal-information',
  templateUrl: './proposal-information.component.html',
  styleUrls: ['./proposal-information.component.css']
})
export class ProposalInformationComponent implements OnInit {

  constructor(private productProposalService: ProductProposalService,
              private route: ActivatedRoute) { 
    this.route.params.subscribe( params => this.id = params.id );
  }

  id!: number; // router path variable
  proposal: IProductProposal | undefined;
  sub!: Subscription;
  errorMessage: string | undefined;

  ngOnInit(): void {
    this.sub = this.productProposalService.getProposal(this.id).subscribe({
      next: proposal => this.proposal = proposal,
      error: err => this.errorMessage = err
    })
  }

}
