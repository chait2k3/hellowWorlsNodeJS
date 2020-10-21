# Stage 1
FROM node:12.16-alpine as node

# Create app directory
RUN mkdir -p /usr/src/app1 
WORKDIR /usr/src/app1

# install app dependencies
COPY package*.json /usr/src/app1/
RUN npm install --unsafe-perm

# Copy application code/source files
COPY . /usr/src/app1

RUN chgrp -R 0 /usr/src/app1/ && \
    chmod -R g=u /usr/src/app1/

EXPOSE 8080

LABEL io.openshift.expose-services="8080:http"

USER 1001

CMD [ "node", "app.js" ]
