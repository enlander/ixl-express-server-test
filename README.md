# ixl-express-server-test
This is the hello world of express servers

## Installation
```
npm install
```

## Lint testing (ESLint)

```
npm run test:lint
```

## Format testing (Prettier)

```
npm run test:format
```

## Build this on docker on your local machine
```
docker build -t uk.icr.io/ix-liberty/ixl-express-server-test .
```

## Run in this on docker on your local machine
```
docker run -p 3000:3000 uk.icr.io/ix-liberty/ixl-express-server-test
```

## Push to image registry
```
docker push uk.icr.io/ix-liberty/ixl-express-server-test
```

## Test in browser
open a browser and go to the following uri

```
http://localhost:3000
```

and within the browser run this command

query{hello}

## Test with curl
If you want to test this service works in curl, run this command

```
curl 'http://localhost:3000'
```
