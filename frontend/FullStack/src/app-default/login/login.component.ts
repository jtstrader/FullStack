import { Component, OnInit } from '@angular/core';
import { Subscription } from 'rxjs';
import { LoginService } from '../services/login.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {

  constructor(private loginService: LoginService) { }

  user_name: string | undefined;
  password: string | undefined;

  uFail: boolean = false;
  pFail: boolean = false;

  sub!: Subscription;
  success: boolean = false;
  responseCode: string = "";
  errorMessage: string = "";

  login(): void {

    // catch errors first
    let err: boolean[] = [false, false];
    if(this.user_name == undefined || this.user_name == "")
      this.uFail = true; 
    else
      this.uFail = false;
    if(this.password == undefined || this.password == "")
      this.pFail = true;
    else
      this.pFail = false;
    if(this.uFail || this.pFail)
      return;

    if(this.user_name != undefined && this.password != undefined) {
      this.sub = this.loginService.login(this.user_name, this.password).subscribe({
        next: OK => {
          console.log(OK);
          let rA = OK.split(" ");
          if(rA[0] == "OK:") {
            console.log("Login Success!");
          }
        },
        error: err => this.errorMessage = err
      })
    }
  }

  ngOnInit(): void {

  }
}
