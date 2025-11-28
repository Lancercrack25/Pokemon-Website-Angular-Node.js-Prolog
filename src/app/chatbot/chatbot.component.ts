import { Component, OnInit } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { CommonModule } from '@angular/common';
import { HttpClient } from '@angular/common/http';
import Swal from 'sweetalert2';

@Component({
  selector: 'app-chatbot',
  imports: [CommonModule, FormsModule],
  templateUrl: './chatbot.html',
  styleUrls: ['./chatbot.css']
})
export class ChatbotComponent implements OnInit {
  userMessage: string = '';
  botMessage: string = '';

  constructor(private http: HttpClient) {}

  async ngOnInit() {
    await this.mostrarDialogoRotom();
  }

  async mostrarDialogoRotom() {
    await Swal.fire({
      title: '⚡ ¡RotomDex conectado! ⚡',
      text: 'Bzzt... Iniciando comunicación con el nuevo entrenador...',
      imageHeight: 180,
      background: '#d2f2ff',
      confirmButtonText: 'Continuar',
      confirmButtonColor: '#3dbfe3ff',
    });

    await Swal.fire({
      title: '¡Hola, entrenador!',
      text: 'Soy RotomDex, tu compañero digital. Estoy aquí para ayudarte a conocer todo sobre los Pokémon.',
      imageUrl: 'https://imgs.search.brave.com/rFd0ULoBs9jBJxVvSOQtGow9uNgXPOUyiAoHKEY4Ees/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9wbTEu/YW1pbm9hcHBzLmNv/bS82MzQzLzA0ZjVm/OTNhOTU4MTg3MjRk/OTNkMWNjMWU0YmJk/MDljZjdjMmMyZDBf/aHEuanBn',
      imageHeight: 180,
      background: '#d2f2ff',
      confirmButtonText: '¡Encantado, Rotom!',
      confirmButtonColor: '#4e3de3',
    });

    await Swal.fire({
      title: '¡Bzzt! Datos cargados correctamente ⚡',
      html: `<p style="font-size:14px; text-align:justify;">
               En esta sección podrás preguntarme <strong>todo lo que quieras sobre Pokémon</strong>.<br><br>
               ¡Prometo ayudarte a convertirte en el mejor maestro Pokémon de la región! 🏆
             </p>`,
      imageUrl: 'https://imgs.search.brave.com/4K8ub9-yUyEFmytyOQ1OByO53uFofm-yXgpZs8WJKy0/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS50ZW5vci5jb20v/TWxkVldmNndHazBB/QUFBTS9yb3RvbS1y/b3RvbWRleC5naWY.gif',
      imageHeight: 180,
      background: '#d2f2ff',
      confirmButtonText: '¡Vamos allá!',
      confirmButtonColor: '#4e3de3',
    });
  }

  enviar() {
    if (!this.userMessage.trim()) return;

    const mensaje = this.userMessage;
    this.botMessage = '... escribiendo 🤖';

    this.http.post<any>('http://localhost:3000/chat', { mensaje }).subscribe({
      next: (res) => {
        this.botMessage = res.respuesta || 'Lo siento, no entendí eso.';
      },
      error: () => {
        this.botMessage = 'Error de conexión con el servidor.';
      }
    });

    this.userMessage = '';
  }
}