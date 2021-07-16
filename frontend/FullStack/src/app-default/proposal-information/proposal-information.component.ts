import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Subscription } from 'rxjs';
import { IProductProposal } from '../interfaces/iproduct-proposal';
import { IProposalComment } from '../interfaces/iproposal-comment';
import { ProductProposalService } from '../services/product-proposal.service';
import { ProposalCommentsService } from '../services/proposal-comments.service';

@Component({
  selector: 'app-proposal-information',
  templateUrl: './proposal-information.component.html',
  styleUrls: ['./proposal-information.component.css']
})
export class ProposalInformationComponent implements OnInit {

  constructor(private productProposalService: ProductProposalService,
              private proposalCommentService: ProposalCommentsService,
              private route: ActivatedRoute) { 
    this.route.params.subscribe( params => this.id = params.id );
  }

  id!: number; // router path variable
  proposal: IProductProposal | undefined;
  sortedComments: IProposalComment[] | undefined;
  sub!: Subscription;
  errorMessage: string | undefined;
  commentBoxState: boolean = false;
  newUserComment: string = "";

  // tracking ratio
  ratio: number = 0;
  upMap: Map<number, boolean> = new Map();
  downMap: Map<number, boolean> = new Map();

  changeCommentBoxState(): void {
    this.commentBoxState = !this.commentBoxState;
  }

  postComment(): void {
    if(this.newUserComment != "") {
      let newComment: IProposalComment = 
      {
        "comment_id": -1,
        "comment_author": "Jacob Strader", // for now, hard coded, should grab user id, though
        "comment_text": this.newUserComment,
        "comment_ratio": 0
      };

      let resultComment: IProposalComment;
      let result: Subscription = this.proposalCommentService.postComment(this.id, newComment).subscribe({
        next: comment => {
          if(this.proposal != undefined) {
            resultComment = comment;
            this.proposal?.comments.unshift(comment);
            this.sortedComments = this.sortList(this.proposal.comments);
            this.newUserComment = "";
            this.changeCommentBoxState();
          }
        },
        error: err => {
          console.log(err);
          alert("Your comment could not be submitted at this time.");
        }
      })
    }
    else {
      alert("Cannot submit comment! Message empty...");
    }
  }

  sortList(comments: IProposalComment[]): IProposalComment[] {
    return comments.sort((a, b) => a.comment_ratio - b.comment_ratio);
  }

  ngOnInit(): void {
    this.sub = this.productProposalService.getProposal(this.id).subscribe({
      next: proposal => {
        this.proposal = proposal;
        this.sortedComments = this.sortList(this.proposal.comments);
      },
      error: err => this.errorMessage = err
    })
  }

  ngOnDestroy(): void {

  }

}
