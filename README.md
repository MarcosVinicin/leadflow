# LeadFlow

Mini-CRM de leads: os contatos entram por formulário ou webhook, são organizados em um funil kanban e viram relatórios de conversão. Projeto de portfólio, feito com dados fictícios.

## Status

🚧 **Em construção.** O README é atualizado a cada etapa concluída.

## O que vai ter

- Login com autenticação (JWT)
- Cadastro, edição e exclusão de leads
- Funil com etapas: Novo, Contato, Proposta, Fechado e Perdido
- Filtros, busca e paginação
- Webhook público para receber leads de formulários externos
- Dashboard com números do funil (leads por etapa, taxa de conversão, leads por origem)

**Fora do escopo da primeira versão:** equipes e permissões, envio real de e-mail, integração com CRMs de terceiros, notificações em tempo real.

## Tecnologias

| Camada | Tecnologia |
|---|---|
| API | Node.js + Express |
| Banco de dados | PostgreSQL 17 (via Docker) |
| Front-end | HTML, CSS e JavaScript |
| Autenticação | JWT + bcrypt |
| Validação | Zod |
| Testes | Vitest + Supertest |
| Deploy | Render (API e banco) + Vercel (front-end) |

## Roadmap

- [x] Ambiente: Node, Git e PostgreSQL rodando em container
- [ ] Repositório e estrutura inicial
- [ ] Servidor Express e rota `/health`
- [ ] Modelagem do banco e criação das tabelas
- [ ] CRUD de leads
- [ ] Validação e tratamento de erros
- [ ] Filtros, busca e paginação
- [ ] Etapas do funil e histórico de movimentação
- [ ] Autenticação e rotas protegidas
- [ ] Webhook de entrada e formulário público
- [ ] Relatórios
- [ ] Front-end: login, kanban e detalhe do lead
- [ ] Dashboard com gráficos
- [ ] Testes automatizados
- [ ] Documentação da API, prints e demonstração
- [ ] Deploy

## Como rodar o banco de dados

Pré-requisitos: [Docker](https://www.docker.com/) e [Node.js](https://nodejs.org/).

1. Copie `api/.env.example` para `api/.env` e troque a senha.
2. Suba o PostgreSQL com as variáveis do seu `.env`:

```bash
docker run --name leadflow-db \
  -e POSTGRES_USER=leadflow \
  -e POSTGRES_PASSWORD=sua-senha \
  -e POSTGRES_DB=leadflow \
  -p 127.0.0.1:5432:5432 \
  -v leadflow-data:/var/lib/postgresql/data \
  -d postgres:17
```

As instruções para rodar a API serão adicionadas quando ela existir.

## Sobre o processo

Projeto construído de forma incremental, uma etapa por vez, com commits pequenos. Uso IA como mentor para entender cada decisão (o porquê de cada etapa), e escrevo, testo e reviso o código que entra no repositório.

## Autor

**Marcos Vinicius**: [LinkedIn](https://www.linkedin.com/in/marcos-vinicius-6461a9243) · [GitHub](https://github.com/MarcosVinicin)