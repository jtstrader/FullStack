import { HttpClient, HttpErrorResponse, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable, throwError } from 'rxjs';
import { IProductProposal } from '../interfaces/iproduct-proposal';
import { tap, catchError } from 'rxjs/operators';

@Injectable({
  providedIn: 'root'
})
export class ProductProposalService {

  constructor(private http: HttpClient) { }

  // api/v1/proposals
  getProposalsList(): Observable<IProductProposal[]> {
    return this.http.get<IProductProposal[]>("http://localhost:8080/api/v1/proposals/").pipe(
      tap(data => console.log('All: ', JSON.stringify(data))),
      catchError(this.handleError)
    );
  }

  // api/v1/proposal/{id}
  getProposal(id: number): Observable<IProductProposal> {
    return this.http.get<IProductProposal>(`http://localhost:8080/api/v1/proposals/${id}`).pipe(
      tap(data => console.log('All: ', JSON.stringify(data))),
      catchError(this.handleError)
    );
  }

  // api/v1/proposals
  postProposal(proposal: IProductProposal): Observable<IProductProposal>  {
    const httpOptions = {
      headers: new HttpHeaders({'Content-Type': 'application/json'})
    }
    return this.http.post<IProductProposal>(`http://localhost:8080/api/v1/proposals/`, JSON.stringify(proposal), httpOptions).pipe(
      tap(data => console.log('All: ', JSON.stringify(data))),
      catchError(this.handleError)
    );
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
