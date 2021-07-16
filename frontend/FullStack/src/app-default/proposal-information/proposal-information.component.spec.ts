import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ProposalInformationComponent } from './proposal-information.component';

describe('ProposalInformationComponent', () => {
  let component: ProposalInformationComponent;
  let fixture: ComponentFixture<ProposalInformationComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ProposalInformationComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(ProposalInformationComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
