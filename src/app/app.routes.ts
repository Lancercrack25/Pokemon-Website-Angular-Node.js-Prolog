import { Routes } from '@angular/router';
import { ChatbotComponent } from './chatbot/chatbot.component';
import { PokedexComponent } from './pokedex/pokedex.component';
import { NavbarComponent } from './navbar/navbar.component';
import { InicioComponent } from './inicio/inicio.component';
import { FooterComponent } from './footer/footer.component';
import { ApiComponent } from './api/api.component';
import { provideHttpClient } from '@angular/common/http';
import { provideRouter } from '@angular/router';

export const routes: Routes = [
  { path: 'pokedex', component: PokedexComponent },
  { path: 'chatbot', component: ChatbotComponent },
  { path: 'navbar', component: NavbarComponent },
  { path: 'api', component: ApiComponent },
  {path:'footer',component:FooterComponent},
  { path: '', component: InicioComponent }
];

export const appConfig = {
  providers: [
    provideRouter(routes),
    provideHttpClient()
  ]
};
