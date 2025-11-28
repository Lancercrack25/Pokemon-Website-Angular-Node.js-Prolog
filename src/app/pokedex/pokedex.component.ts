import { Component } from '@angular/core';
import { ApiComponent } from "../api/api.component";
import { FooterComponent } from "../footer/footer.component";

@Component({
  selector: 'app-pokedex',
  templateUrl: './pokedex.html',
  styleUrls: ['./pokedex.css'],
  imports: [ApiComponent, FooterComponent]
})
export class PokedexComponent { }

