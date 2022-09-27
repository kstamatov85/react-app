# Specify base image
FROM node:18-alpine

WORKDIR /usr/app

# Copy files to the image
COPY package.json ./
RUN npm install

RUN set NODE_OPTIONS=--max_old_space_size=4096
# Install dependencies

COPY ./ ./

# Run commands
CMD ["npm", "run", "start"]




# Docker commands
#docker ps === See all running containers
#docker run -it kaloyan/my-project sh  === Start shell terminal
#docker run -it kaloyan/my-project npm run test === to run command inside docker

#docker exec -it kaloyan/my-project npm run test === to Execute command in existing container
#docker exec -it kaloyan/my-project sh === to Execute shell

#docker build -t kaloyan/my-project .
#docker run kaloyan/my-project .
#docker run -p 5000:5000 kaloyan/my-project  === Forwarding port with this

#docker run -f .Dockerfile.dev . === when want to run dockerfile named with not by the convention .dev

#docker-compose up -d === The -d flag starts container and leave us on console 
#docker logs --follow container-name === Subscribe for logs in container
