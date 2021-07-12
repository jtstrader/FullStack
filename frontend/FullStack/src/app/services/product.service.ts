import { Injectable } from '@angular/core';
import { HttpClient, HttpErrorResponse } from '@angular/common/http';
import { Observable, throwError } from 'rxjs';
import { tap, catchError } from 'rxjs/operators';
import { IProduct } from '../interfaces/iproduct';

@Injectable({
  providedIn: 'root'
})
export class ProductService {

  constructor(private http: HttpClient) { }

  // api/v1/products
  getProductList(): Observable<IProduct[]> {
    return this.http.get<IProduct[]>("http://localhost:8080/api/v1/products").pipe(
      tap(data => console.log('All: ', JSON.stringify(data))),
      catchError(this.handleError)
    )
  }

  getProduct(id: number): Observable<IProduct> {
    return this.http.get<IProduct>(`http://localhost:8080/api/v1/products/{id}`).pipe(
      tap(data => console.log('All: ', JSON.stringify(data))),
      catchError(this.handleError)
    )
  }

  private handleError(err: HttpErrorResponse) {
    let errorMessage = '';
    if (err.error instanceof ErrorEvent) {
      errorMessage = `An error occured: ${err.error.message}`;
    } else {
      errorMessage = `Server returned code: ${err.status}, error message is: ${err.message}`;
    }
    return throwError(errorMessage);
  }
  

}
