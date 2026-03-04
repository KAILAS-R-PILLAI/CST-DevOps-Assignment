# Uses Node.js version 18 as the base image.
FROM node:18    

# Sets the working directory inside the container.
WORKDIR /usr/src/app

# Copies dependency files (package.json & package-lock.json) to the container.
COPY package*.json ./

# Installs all Node.js dependencies.
RUN npm install

# Copies the rest of your project files into the container.
COPY . .

# Specifies that the app will listen on port 3060.
EXPOSE 3060

# Runs the application using the npm start command.
CMD [ "npm", "start" ]