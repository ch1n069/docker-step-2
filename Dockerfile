FROM node:14

# declare the working directort

WORKDIR /app

# copy the package.json before installing the node module

COPY package.json /app

# run npm install
RUN npm install

# copy the rest of the files and the build into tha app
COPY . .

# providing a deault port
ARG DEFAULT_PORT=80

ENV PORT $DEFAULT_PORT

EXPOSE $PORT

# declare volume to store the files in
# VOLUME [ "/app/feedback" ]

CMD [ "npm","start" ]

