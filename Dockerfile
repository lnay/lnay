FROM node:18-alpine3.15 as builder

# install dependencies
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci

# Copy all local files into the image.
COPY . .

RUN npm run build

FROM nginx:alpine as deployment
COPY --from=builder /app/build /usr/share/nginx/html
