FROM node:14

# declare the working directort

WORKDIR /app

# copy the package.json before installing the node module

COPY package.json /app

# run npm install
RUN npm install

# copy the rest of the files and the build into tha app
COPY . .

EXPOSE 80

# declare volume to store the files in
# VOLUME [ "/app/feedback" ]

CMD [ "node","server.js" ]

