# Copy full repository and build dist within docker container
FROM registry.access.redhat.com/ubi8/nodejs-10 as build
WORKDIR /usr/src/build
COPY . .
USER root

# Perform the build
RUN npm i
RUN npm run build
RUN npm prune --production
RUN rm -rf ./server

# Copy the production settings
COPY ./env/.env.prod ./.env

# Setup a minimal ubi
FROM uk.icr.io/ix-liberty/ubi8/ubi-minimal/nodejs-10

# Install the app
WORKDIR /usr/src/app
COPY --from=build /usr/src/build .

# Start the app
EXPOSE 3000
CMD ["npm","run","start:docker"]