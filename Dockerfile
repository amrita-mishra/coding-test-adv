FROM node:14

WORKDIR .
COPY package*.json /
RUN npm install -g nodemon && npm install
COPY . /

EXPOSE 3000
CMD ["nodemon", "bin/www"]