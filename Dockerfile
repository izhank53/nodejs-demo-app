FROM node:22-alpine

#sets working directory , so all commands like RUN , COPY , CMD executes in this path.
WORKDIR /app

#copy dependencices before source code , for caching for step npm ci
#app.js (source application code) if you changed the code and not add any new dependencies , it will not downalod your node modules at every rebuilds
COPY package*.json ./

#after copy , now npm is used to install dependencies from package-lock.json
RUN npm ci --omit=dev

#now adter insatelling dependencies , it will copy code to conatiner
COPY app.js ./
#contains images frontend
COPY views ./views

EXPOSE 8080

CMD ["npm", "start"]