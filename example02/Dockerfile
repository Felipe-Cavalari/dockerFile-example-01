# 1️⃣ Escolhemos uma imagem base oficial com Node.js 
FROM node:18 AS build

# 2️⃣ Definimos o diretório de trabalho dentro do container
WORKDIR /app

# 3️⃣ Copiamos o arquivo de dependências primeiro
# Isso permite cache dessa camada e evita reinstalar tudo a cada build 
# usamos * para copiar o package.json e package-lock.json juntos

COPY package*.json ./

RUN npm install --production

COPY . .

FROM node:18-alpine3.19

WORKDIR /app

COPY --from=build /app/node_modules ./node_modules


# 6️⃣ Informamos ao Docker qual porta a aplicação irá expor
EXPOSE 3000

# 7️⃣ Definimos o comando para iniciar a aplicação
CMD ["npm", "start"]
