import { TestBed } from '@angular/core/testing';

import { ProductProposalServiceService } from './product-proposal-service.service';

describe('ProductProposalServiceService', () => {
  let service: ProductProposalServiceService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(ProductProposalServiceService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
