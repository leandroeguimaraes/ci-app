# Define a imagem base
FROM node:19-alpine3.16

# Define o diretório de trabalho
WORKDIR /app

# Copia o package.json e o package-lock.json para o diretório de trabalho
COPY package*.json ./

# Instala as dependências
RUN npm install

# Copia todo o resto do código fonte para o diretório de trabalho
COPY . .

# Compila o código
RUN npm run build

# Define o comando para iniciar a aplicação
CMD ["npm", "start"]