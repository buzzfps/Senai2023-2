import React from 'react';
import ReactDOM from 'react-dom/client';
import logo from './senai-165.svg'
import './index.css';
import App from './App';
import reportWebVitals from './reportWebVitals';

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <body>
    <header>
      <img src={logo} className="App-logo" alt="logo" />
      <h2>Biblioteca Virtual</h2>
      <a href="https://www.estantevirtual.com.br/login?target=/listas">Meus Livros</a>
      <a href="https://www.estantevirtual.com.br/recomendados?gclid=EAIaIQobChMIv4-eruDygAMVrjLUAR0P_gZ7EAAYASAAEgKHWvD_BwE">Mais lidos</a>
    </header>]
  </body>

);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
reportWebVitals();
