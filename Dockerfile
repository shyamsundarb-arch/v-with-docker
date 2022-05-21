## We specify the base image we need for our
## v application
FROM thevlang/vlang:alpine
## We create an /app directory within our
## image that will hold our application source
## files
RUN mkdir /app
## We copy everything in the root directory
## into our /app directory
ADD . /app
## We specify that we now wish to execute 
## any further commands inside our /app
## directory
WORKDIR /app
## we run v build to compile the binary
## executable of our V program
RUN v v-with-docker.v build -prod
## Expose the PORT 8080
## in which v app listens to
EXPOSE 8080
## Our start command which kicks off
## our newly created binary executable
CMD ["/app/v-with-docker"]