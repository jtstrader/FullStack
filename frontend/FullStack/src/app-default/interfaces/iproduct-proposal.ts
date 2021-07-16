import { IProposalComment } from "./iproposal-comment";

export interface IProductProposal {
    proposal_id: number;
    product_name: string;
    product_description: string;
    comments: IProposalComment[]; // list of comments, each index is a single comment item
}
