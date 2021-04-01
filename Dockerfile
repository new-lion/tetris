FROM alpine
RUN apk add git nodejs-current npm
RUN npm install --global yarn 
WORKDIR /app
RUN if [ ! -d flatris ] ; then git clone https://github.com/timurb/flatris.git ; fi
WORKDIR /app/flatris
RUN yarn -g add flow-bin flow next react react-dom
RUN chown 1001:1001 -R /app/flatris/node_modules/accepts/node_modules
RUN yarn install 
RUN yarn build 
EXPOSE 3000
CMD ["yarn", "run", "start"]
