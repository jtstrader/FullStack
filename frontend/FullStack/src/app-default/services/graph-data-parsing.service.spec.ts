import { TestBed } from '@angular/core/testing';

import { GraphDataParsingService } from './graph-data-parsing.service';

describe('GraphDataParsingService', () => {
  let service: GraphDataParsingService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(GraphDataParsingService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
