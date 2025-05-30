# 🚀 Hello Docker - Aplicação Node.js com Express

Este é um projeto simples de uma aplicação Node.js utilizando o framework Express, com foco em demonstrar como criar e executar um container Docker.

---

## 📦 Tecnologias Utilizadas

- Node.js 18
- Express.js
- Docker

---

## 📁 Estrutura do Projeto

hello-docker/
├── app.js
├── package.json
└── Dockerfile

yaml
Copiar
Editar

---

## 📜 Descrição da Aplicação

A aplicação expõe uma rota HTTP simples:

- `GET /` → retorna a mensagem: `"Hello Docker!"`

---

## ▶️ Como Rodar com Docker

### 1. Clone o repositório (ou crie os arquivos manualmente):

```bash
git clone https://github.com/seu-usuario/hello-docker.git
cd hello-docker
```

💡 Caso tenha criado os arquivos localmente, certifique-se de estar na pasta onde estão Dockerfile, app.js e package.json.

2. Construa a imagem Docker

```bash
docker build -t hello-docker .
```

3. Execute o container

```bash
docker run -p 3000:3000 hello-docker
```

4. Acesse no navegador
   Abra http://localhost:3000 e veja a mensagem:
   Hello Docker!

🐳 Dockerfile Explicado

```dockerfile
FROM node:18              # Usa a imagem oficial do Node.js como base
WORKDIR /app              # Define o diretório de trabalho dentro do container
COPY package*.json ./     # Copia arquivos de dependência
RUN npm install           # Instala as dependências do projeto
COPY . .                  # Copia todo o restante do código da aplicação
EXPOSE 3000               # Expõe a porta que será usada
CMD ["npm", "start"]      # Comando padrão para iniciar a aplicação
```

🧠 Dicas
Utilize .dockerignore para evitar copiar arquivos desnecessários.

Faça COPY em camadas estratégicas para aproveitar o cache do Docker.

Use docker logs para verificar o que está acontecendo dentro do container.

🤝 Contribuição
Este projeto é didático e aberto para aprendizado. Fique à vontade para clonar, testar e modificar!
