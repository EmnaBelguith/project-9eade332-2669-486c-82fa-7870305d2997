FROM node:18
WORKDIR /usr/src/app
COPY thinkify-main/client/package*.json ./
RUN npm install --only=prod # Run npm install to install necessary dependencies
COPY thinkify-main/client/. .
EXPOSE 3000
ENV PORT=3000
CMD ["npm", "start"]