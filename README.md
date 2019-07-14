![Proveasy Logo](https://imgur.com/r8rAu5p.png)

# Preveasy
![version](https://img.shields.io/badge/version-1.0.0-blue.svg?cacheSeconds=2592000)
Esse projeto foi desenvolvido durante a [Hackathon GR1D Recife](https://hackagr1d.com.br/) 2019.

Nosso projeto é uma aplicação multiplataforma* que oferece uma forma interativa de adquirir um produto de previdência personalizado da Mongeral. O usuário informa ao aplicativo os seus objetivos e o aplicativo mostra o produto mais relevante para o contexto do usuário.

## Desenvolvimento

Nós usamos as seguintes APIs da plataforma [GR1D](https://insurance.gr1d.io/) para esse projeto:

### 1. [Mongeral](https://www.mongeralaegon.com.br/) (Previdência)

Vendemos os produtos de previdência da Mongeral através dessa API.

### 2. [Em andamento] [Compline](https://www.compline.com.br/) (OCR)

Usado para escanear a documentação necessária para fazer a solicitação de previdência.

### 3. [Em andamento] [PrintLaser](http://www.printlaser.com/) (Email)

Usado para notificar o usuário quando a solicitação de previdência é aceita pela Mongeral.

### 4. [Em andamento] [Banco Central](https://www.bcb.gov.br/) (Estatísticas)

Fonte de consultas de taxas e juros para que nossa empresa faça comparativos entre serviços financeiros de investimento a longo termo.

Usamos [swagger-codegen](https://github.com/swagger-api/swagger-codegen) e [QuickType](https://quicktype.io/) para gerar o código client-side que faz as requisições.

* O primeiro protótipo está sendo desenvolvido para a plataforma iOS.

## Membros da Equipe:
- [Victor Lins](https://www.linkedin.com/in/victor-lins-3a9035168/) - UX
- [Guilherme Daguir](https://br.linkedin.com/in/guilherme-daguir) - UX
- [Camilla Gonzaga](https://www.linkedin.com/in/camillagmoreira/) - Business
- [Terry Wenderson](https://br.linkedin.com/in/terryalvis) - Business
- [Ian Mateus](https://br.linkedin.com/in/ian-manor) - Programming
