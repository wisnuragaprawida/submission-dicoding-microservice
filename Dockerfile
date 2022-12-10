#use node image from docker hub with tag 14-alpine
FROM node:14-alpine

# create /app directory in container
RUN mkdir -p /app

# set working directory to /app directory
WORKDIR /app

# copy all files from source in current directory in host to working directory in container
COPY . .

# create environment variables
ENV NODE_ENV=production DB_HOST=item-db

# install dependencies and build the application
RUN npm install --production --unsafe-perm && npm run build

# export port 8080 from container
EXPOSE 8080

# run "npm start" when container starts
CMD ["npm", "start"]    