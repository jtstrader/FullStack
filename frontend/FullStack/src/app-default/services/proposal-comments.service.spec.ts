import { TestBed } from '@angular/core/testing';

import { ProposalCommentsService } from './proposal-comments.service';

describe('ProposalCommentsService', () => {
  let service: ProposalCommentsService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(ProposalCommentsService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
