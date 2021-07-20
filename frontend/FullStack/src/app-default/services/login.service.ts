import { HttpClient, HttpErrorResponse, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable, throwError } from 'rxjs';
import { catchError, tap } from 'rxjs/operators';

@Injectable({
  providedIn: 'root'
})
export class LoginService {

  constructor(private http: HttpClient) { }

  // main login uri
  uri: string = "http://localhost:8080/api/login";

  // get request to confirm valid login credentials
  login(username: string, password: string): Observable<string> {
    let HTTPOptions: Object = {
      responseType: 'text'
    }
    return this.http.get<string>(`${this.uri}?user_name=${username}&password_attempt=${password}`, HTTPOptions).pipe(
      tap(data => console.log('All: ', JSON.stringify(data))),
      catchError(this.handleError)
    );
  }

  // POST request to create account
  createAccount(username: string, password: string): Observable<string> {
    let HTTPOptions: Object = {
      headers: new HttpHeaders({
        'Content-Type': 'application/json'
      }),
      responseType: 'text'
    };
    return this.http.post<string>(`${this.uri}/register?new_user_name=${username}&new_user_password=${password}`, "", HTTPOptions).pipe(
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
