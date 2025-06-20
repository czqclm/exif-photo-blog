FROM node
WORKDIR /app
RUN npm install -g pnpm
COPY . .
RUN pnpm install
EXPOSE 3000
RUN npm run build
CMD ["npm", "start"]