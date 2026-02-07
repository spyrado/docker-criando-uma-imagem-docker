# estou baixando uma imagem de node na versão 14
FROM node:14 
# estou falando que meu diretório de trabalho é a pasta app, ele cria a pasta que voce definir, no caso /app
WORKDIR /app
# estou definindo uma variavel com um valor apenas em tempo de execução desse script
ARG PORT=3000
# estou falando que a variavel de ambiente vai ter o seu valor alterado para o valor atribuido a variável $PORT
ENV PORT=$PORT
# estou informando para quem consumir minha imagem que a porta é 3000
EXPOSE $PORT
# estou copiando tudo que está na raiz desse projeto e jogando para dentro do meu workdir(raiz)
COPY . .
# estou instalando as dependencias do sistema
RUN npm install
# estou falando que sempre que o container for iniciado deve rodar esse comando
ENTRYPOINT npm start