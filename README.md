# HackGR1D
Esse projeto foi desenvolvido durante a [Hackathon GR1D Recife](https://hackagr1d.com.br/) 2019.

Essa aplicação oferece uma forma interativa de adquirir um produto de previdência personalizado da Mongeral. O usuário informa ao aplicativo os seus objetivos e o aplicativo mostra o produto mais relevante para o contexto do usuário.

Nós usamos as seguintes APIs da plataforma [GR1D](https://insurance.gr1d.io/) para esse projeto:

1. [Mongeral](https://www.mongeralaegon.com.br/) (Previdência)
Vendemos os produtos de previdência da Mongeral através dessa API.

2. [Compline](https://www.compline.com.br/) (OCR)
Usamos essa API para escanear a documentação necessária para fazer a solicitação de previdência.

3. [PrintLaser](http://www.printlaser.com/) (Email)
Usado para notificar o usuário quando a solicitação de previdência é aceita pela Mongeral.

Usamos [swagger-codegen](https://github.com/swagger-api/swagger-codegen) para gerar o código client-side que faz as requisições.

# Membros da Equipe:
- [Victor Lins](https://www.linkedin.com/in/victor-lins-3a9035168/) - UX
- [Guilherme Daguir](https://br.linkedin.com/in/guilherme-daguir) - UX
- [Camilla Gonzaga](https://www.linkedin.com/in/camillagmoreira/) - Business
- [Terry Wenderson](https://br.linkedin.com/in/terryalvis) - Business
- [Ian Mateus](https://br.linkedin.com/in/ian-manor) - Programming
