import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { Subscription } from 'rxjs';
import { LoginService } from '../services/login.service';

@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.css']
})
export class RegisterComponent implements OnInit {

  constructor(private loginService: LoginService,
              private router: Router) { }

  requiredFields: string[] = [];
  failedFields: boolean[] = [];
  fieldAmount: number = 3;
  noMatch: boolean = false;
  userTaken: boolean = false;
  ourEnd: boolean = false;
  success: boolean = false;
  sub!: Subscription;

  createAccount(): void {
    let brk: boolean = false;
    for(let i=0; i<this.fieldAmount; i++) {
      if(this.requiredFields[i] == "" || this.requiredFields[i] == undefined) {
        this.failedFields[i] = true;
        brk = true;
      } else {
        this.failedFields[i] = false;
      }
    }
    if(brk)
      return;
    
    // check if passwords are matchin
    if(this.requiredFields[1] != this.requiredFields[2]) {
      this.noMatch = true;
      return;
    }
    this.noMatch = false;
    this.sub = this.loginService.createAccount(this.requiredFields[0], this.requiredFields[1]).subscribe({
      next: response => {
        console.log(response);
        let rt = response.split(" ");
        if(rt[0] == "OK:")
          this.success = true;
        else
          this.success = false;
        if(rt[1] == "User")
          this.userTaken = true;
        else
          this.userTaken = false;
        if(rt[1] == "Failed")
          this.ourEnd = true;
        else
          this.ourEnd = false;


        if(this.success) {
          this.router.navigate(["/login"]);
        }
      },
      error: err => {
        console.log("Error: " + err);
      }
    });
  }

  ngOnInit(): void {
    let tempFieldAmount = this.fieldAmount;
    while(tempFieldAmount--) {
      this.requiredFields[tempFieldAmount] = "";
      this.failedFields[tempFieldAmount] = false;
    }
  }

}
