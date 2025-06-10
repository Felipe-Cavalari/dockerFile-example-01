# 1️⃣ Escolhemos uma imagem base oficial com Node.js
FROM node:18

# 2️⃣ Definimos o diretório de trabalho dentro do container
WORKDIR /app

# 3️⃣ Copiamos o arquivo de dependências primeiro
# Isso permite cache dessa camada e evita reinstalar tudo a cada build
COPY package*.json ./

# 4️⃣ Instalamos as dependências do projeto
RUN npm install

# 5️⃣ Copiamos o restante dos arquivos da aplicação para dentro do container
COPY . .

# 6️⃣ Informamos ao Docker qual porta a aplicação irá expor
EXPOSE 3000

# 7️⃣ Definimos o comando para iniciar a aplicação
CMD ["npm", "start"]
