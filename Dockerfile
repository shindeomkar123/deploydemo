FROM node:20-alpine

WORKDIR /app

COPY package*.json ./

RUN npm ci --legacy-peer-deps

COPY . .

RUN npm run build -- --configuration production --output-path=dist


####### Stage 2: Serve the app with a lightweight web server

FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*


COPY nginx.conf /etc/nginx/conf.d/default.conf


COPY --from=build /app/dist /usr/share/nginx/html


EXPOSE 80


CMD ["nginx", "-g", "daemon off;"]


