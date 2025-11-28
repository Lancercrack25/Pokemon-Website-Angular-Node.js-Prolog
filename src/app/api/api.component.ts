import { Component, OnInit } from '@angular/core';
import { HttpClient, HttpClientModule } from '@angular/common/http';
import { TitleCasePipe, UpperCasePipe, NgIf, NgFor } from '@angular/common';

@Component({
  selector: 'app-api',
  standalone: true,
  imports: [TitleCasePipe, UpperCasePipe, NgFor, NgIf, HttpClientModule],
  templateUrl: './api.html',
  styleUrls: ['./api.css']
})
export class ApiComponent implements OnInit {

  pokemonsDetails: any[] = [];
  loading = false;
  offset = 0;      // para el paginado (empezamos en 0)
  limit = 20;      // cuántos cargar por página

  constructor(private http: HttpClient) {}

  ngOnInit(): void {
    this.loadPokemons();
  }

  loadPokemons(): void {
    this.loading = true;

    this.http.get(`https://pokeapi.co/api/v2/pokemon?limit=${this.limit}&offset=${this.offset}`)
      .subscribe((data: any) => {
        const pokemonsList = data.results;

        // Para cada Pokémon, obtengo detalles completos
        pokemonsList.forEach((p: any) => {
          this.http.get(p.url).subscribe((details: any) => {
            this.pokemonsDetails.push(details);
          });
        });

        this.loading = false;
      }, error => {
        console.error('Error cargando pokemones', error);
        this.loading = false;
      });
  }

  loadMore(): void {
    this.offset += this.limit;
    this.loadPokemons();
  }
}
