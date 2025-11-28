import { Component, signal } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { NavbarComponent } from "./navbar/navbar.component";
import { InicioComponent } from './inicio/inicio.component';
import { Router } from '@angular/router';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';



@Component({
  selector: 'app-root',
  standalone: true, // si estás usando componentes standalone
  imports: [RouterOutlet, NavbarComponent,CommonModule, RouterOutlet, NavbarComponent,FormsModule],
  templateUrl: './app.html',
  styleUrls: ['./app.css']
})
export class App {
  protected readonly title = signal('mi-chatbot-pokemon');
  constructor(public router: Router) {}
}


