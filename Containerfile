FROM alpine:latest

WORKDIR /app 

# Installs gcc
RUN apk add --no-cache build-base

COPY . /app

RUN gcc -o myapp main.c

EXPOSE 8080

CMD ["./myapp"] 
