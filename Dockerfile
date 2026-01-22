# estou baixando uma imagem de node na versão 14
FROM node:14 
# estou falando que meu diretório de trabalho é a pasta app
WORKDIR /app
# estou copiando tudo que está na raiz desse projeto e jogando para dentro do meu workdir(raiz)
COPY . .
# estou instalando as dependencias do sistema
RUN npm install
# estou falando que sempre que o container for iniciado deve rodar esse comando
ENTRYPOINT npm start