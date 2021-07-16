import { HttpClient, HttpErrorResponse, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable, throwError } from 'rxjs';
import { catchError, tap } from 'rxjs/operators';
import { IProposalComment } from '../interfaces/iproposal-comment';

@Injectable({
  providedIn: 'root'
})
export class ProposalCommentsService {

  constructor(private http: HttpClient) { }

  // api/v1/comments/{proposal_id}
  postComment(proposal_id: number, comment: IProposalComment): Observable<IProposalComment> {
    const httpOptions = {
      headers: new HttpHeaders({'Content-Type': 'application/json'})
    }
    return this.http.post<IProposalComment>(`http://localhost:8080/api/v1/comments/proposal/${proposal_id}`, JSON.stringify(comment), httpOptions).pipe(
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
