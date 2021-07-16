import { TestBed } from '@angular/core/testing';

import { ProductProposalService } from './product-proposal.service';

describe('ProductProposalServiceService', () => {
  let service: ProductProposalService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(ProductProposalService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
