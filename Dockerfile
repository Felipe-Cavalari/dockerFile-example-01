# 1️⃣ Escolhemos uma imagem base oficial com Node.js 
FROM node:18 AS build

# 2️⃣ Definimos o diretório de trabalho dentro do container
WORKDIR /app

# 3️⃣ Copiamos o arquivo de dependências primeiro
COPY package*.json ./

# 4️⃣ Instalamos as dependências
RUN npm install

# 5️⃣ Copiamos o restante dos arquivos
COPY . .

# 6️⃣ Criamos a imagem final
FROM node:18-alpine3.19
WORKDIR /app

# 7️⃣ Copiamos as dependências da imagem de build e o package.json
COPY --from=build /app/node_modules ./node_modules
COPY --from=build /app/package.json ./package.json
COPY --from=build /app/app.js ./app.js

# 8️⃣ Expondo a porta da aplicação
EXPOSE 3000

# 9️⃣ Comando para iniciar a aplicação
CMD ["npm", "start"]