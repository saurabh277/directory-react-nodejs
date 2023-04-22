FROM node:10 AS ui-build
WORKDIR /usr/src/app
COPY . ./my-app/
RUN cd my-app && npm install 
EXPOSE 3080
CMD ["node", "./my-app/server.js"]