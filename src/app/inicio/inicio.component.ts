import { Component } from '@angular/core';
import { FooterComponent } from "../footer/footer.component";


@Component({
   selector: 'app-inicio',
   standalone: true,
  templateUrl: './inicio.html',  // nombre correcto del archivo HTML
  styleUrls: ['./inicio.css'],
  imports: [FooterComponent] 
})
export class InicioComponent {

}
