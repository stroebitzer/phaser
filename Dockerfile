FROM node:14-alpine AS builder

WORKDIR /code
COPY package.json .
RUN npm install 

# TODO only copy source files
# COPY ./.eslintignore ./.eslintignore
# COPY ./.eslintrc.cjs ./.eslintrc.cjs
# COPY ./public ./public
# COPY ./src ./src
# COPY ./index.html ./index.html
# COPY ./tsconfig.json ./tsconfig.json
# COPY ./vite.config.ts ./vite.config.ts
COPY . . 
RUN npm run build