import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ProductSuggestionFormComponent } from './product-suggestion-form.component';

describe('ProductSuggestionFormComponent', () => {
  let component: ProductSuggestionFormComponent;
  let fixture: ComponentFixture<ProductSuggestionFormComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ProductSuggestionFormComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(ProductSuggestionFormComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
