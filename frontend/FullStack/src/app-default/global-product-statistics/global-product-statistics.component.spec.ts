import { ComponentFixture, TestBed } from '@angular/core/testing';

import { GlobalProductStatisticsComponent } from './global-product-statistics.component';

describe('GlobalProductStatisticsComponent', () => {
  let component: GlobalProductStatisticsComponent;
  let fixture: ComponentFixture<GlobalProductStatisticsComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ GlobalProductStatisticsComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(GlobalProductStatisticsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
