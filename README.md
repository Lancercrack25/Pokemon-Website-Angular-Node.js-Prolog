<h1 style="color: #2ecc71; font-size: 48px;">Interfaz Web con Angular, Node.js y Prolog</h1>

Este proyecto fue desarrollado utilizando Angular, Node.js y un sistema lógico implementado en Prolog.
Su objetivo es permitir que una interfaz web moderna se comunique con un backend capaz de ejecutar razonamiento lógico mediante Prolog, además de integrar componentes visuales y datos externos.
El sistema incluye:

  1. Comunicación completa entre Angular → Node.js → Prolog
  
  2. Uso de SweetAlert2 para alertas y diálogos estilizados
  
  3. Componentes visuales basados en Bootstrap / Angular Material
  
  4. Integración con la API pública de Pokémon
  
  5. Backend modular y fácil de mantener
  
  6. Ejecución rápida desde terminal
  

<h1 style="color: #2ecc71; font-size: 48px;">¿Como funciona este proyecto?</h1>

La interfaz web funciona mediante una arquitectura distribuida:
  
  - Angular (Frontend) envía solicitudes al backend.
  
  - Node.js (Backend) recibe las solicitudes y las procesa.
  
  - El backend envía información a Prolog, que ejecuta la lógica.
  
  - Los resultados regresan al backend y luego a la interfaz.
  
  - La interfaz muestra los resultados con elementos visuales claro y estilizados.
  

<h2 style="font-size: 36px; margin-top: 40px;">Tecnologías Utilizadas</h2>

- **Frontend:** Angular, HTML, CSS, TypeScript, SweetAlert2, Bootstrap / Angular Material  
- **Backend:** Node.js, Express, módulos para comunicación con Prolog  
- **Lógica:** Prolog  
- **API externa:** PokeAPI  

---

<h2 style="font-size: 36px; margin-top: 40px;">Características</h2>

- **Frontend:**  
  Se definieron 5 componentes standalone, independientes, que conforman la interfaz:
  
  <ul>
    <li><strong>Inicio:</strong>  presentación de contenido general de la web.</li>
    <li><strong>Navbar:</strong> Menu de navegacion de la interfz incluido con una imagen con texto llamativo para el menu de navegacion.</li>
    <li><strong>chatbot:</strong>seccion en la que el usuario puede interactuar con el chatbot.</li>
    <li><strong>api:</strong> Permite filtrar y buscar datos específicos de los pokemons por medio de una api gratuita .</li>
    <li><strong>pokedex:</strong> contenido extra de la pokedex.</li>
  </ul>

- **Backend:**  
  Módulo encargado de la comunicación entre la interfaz y el motor lógico en Prolog. Contiene dos archivos principales:
  
  <ul>
    <li><code>server.js</code>: Servidor principal que se ejecuta desde la terminal.</li>
    <li><code>chat.controler.js</code>: Se encarga de enviar y recibir datos del motor lógico.</li>
  </ul>

- **Lógica (Prolog):**  
  Motor lógico que procesa las reglas y devuelve los resultados al backend, permitiendo que la interfaz muestre información dinámica basada en la lógica definida.
  Ademas el archivo que contiene la base de conocimientos de nuestro chatbot hace lo siguiente
  <ul>
    <li> Se encarga de reponder los atributos de los pokemons.</li>
    <li>Se encarga de responder movimientos.</li>
    <li> Se encarga de reponder cuanto hp tiene el pokemon preguntado.</li>
    <li>Se encarga de responder quien ganaria entre un pokemon y otro.</li>
    <li> Responde saludos y despedidas</li>
    <li>Responde palabras simples como si no, ok.</li>
    <li>Eesponde algunas cosas con algo de humor</li>
  </ul>


<h2 style="font-size: 36px; margin-top: 40px;">Instalación</h2>

<strong>Para poder instalar correctamente este proyecto debes de tener instalado node.js, npm y angular</strong>
<a href ="https://youtu.be/TPHxJQCQ0lE?si=nNOVht3StsGYTTSv"> accede aqui para intsalar node.js y npm</a>
<strong>Una vez hecha la instalacion deberas abrir una terminal cmd con permisos de administrador y ejecutar el sigiente comando </strong
<pre style="background:#f5f5f5; padding: 10px; border-radius: 5px;">
npm install -g @angular/cli
</pre>
<strong>Listo, ya solamente debes de clonar este repositorio para poder usar este proyecto</strong

<h2 style="font-size: 36px; margin-top: 40px;">¿Como ejecuto el proyecto?</h2>
para la ejecucion de este proyecto deberas abrir dos terminales shell las cuales ejecutaran individualmente el backend y el front-end
En la primer terminal debes de ejecutar lo siguiente:

<pre style="background:#f5f5f5; padding: 10px; border-radius: 5px;">
cd backend
</pre>

y luego una vez accedido a la carpeta del backend ejecuta:

<pre style="background:#f5f5f5; padding: 10px; border-radius: 5px;">
node server.js
</pre>

En la segunda terminal no debes de acceder a ninguna otra carpeta simplemente ejecuta:
<pre style="background:#f5f5f5; padding: 10px; border-radius: 5px;">
ng serve -o
</pre>

Te pedira unas cuantas cosas la prim era vez que ejecutas este comando solo debes de decirle que no en la terminal y asi despues se ejecutara la interfaz y automaticamente te redirigira en tu navegador a la interfaz

**Nota importante**: si al ejecutar ng serve -o no te deja deberas de ejecutar desde una terminal shell y con permisos de administrador lo siguiente:
<pre style="background:#f5f5f5; padding: 10px; border-radius: 5px;">
Set-ExecutionPolicy RemoteSigned
</pre>

Cuando te pregunte: Do you want to change the execution policy? [Y/N]

escribe Y preciona Enter.

Qué hace:

**Set-ExecutionPolicy:** Cambia la política de ejecución de PowerShell, que controla qué scripts se pueden ejecutar en tu sistema.
**RemoteSigned:** Es un nivel de seguridad que permite:
**Ejecutar scripts locales** (los que tú creas) sin restricciones.
**Ejecutar scripts descargados** de Internet solo si están firmados digitalmente por un editor confiable.
  Esto evita que scripts maliciosos descargados desde Internet se ejecuten automáticamente.





