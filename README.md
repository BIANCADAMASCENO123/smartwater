# 💧 Smart Water - Sistema de Monitorização de Água

O **Smart Water** é um projeto IoT focado na gestão inteligente, medição de consumo e deteção de fugas de água em condomínios residenciais. O sistema utiliza sensores de caudal integrados a um microcontrolador (ESP32) para enviar dados em tempo real para um banco de dados relacional.

## 🛠️ Tecnologias do Projeto
* **Hardware:** ESP32, Sensor de Fluxo/Caudal de Água YF-S201
* **Banco de Dados:** PostgreSQL (Instalado localmente)
* **Ferramenta de Administração:** DBeaver

## 🗄️ Estrutura do Banco de Dados
O banco de dados foi modelado para suportar o controlo de utilizadores (moradores e síndicos), gestão de sensores instalados, armazenamento de leituras de consumo de água e disparos de notificações de alertas.

A estrutura está organizada na pasta `/banco de dados`:
* `esquema.sql`: Contém a criação de todas as tabelas, restrições (constraints) e índices de performance.
* `seed.sql`: Script com dados fictícios de teste para demonstração e desenvolvimento do painel/dashboard.

## 👥 Autores
* **Bianca Damasceno** 
* **Kauã Tiezzi**
* **Daniel Silva**
* **Mariana Rodrigues**
* **Jeferson Manoel**
* 
