FROM golang:1.19-alpine AS build

RUN apk update && apk add --no-cache git

WORKDIR /home

COPY ./pkg .


RUN go mod download

RUN  go build -o bookstore

EXPOSE 8080

## Deploy 
FROM alpine:latest 

WORKDIR /root
# COPY ./pkg/templates/. /root

COPY --from=build /home/bookstore /root
COPY --from=build /home/main.go /root
COPY --from=build /home/templates/. /root/templates

ENTRYPOINT ["./bookstore"]