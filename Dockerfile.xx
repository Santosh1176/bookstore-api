FROM golang:1.19-alpine AS build

WORKDIR /home

ARG COMMIT_SHA

COPY ./pkg .


RUN go mod download

RUN  go build -o bookstore -ldflags "-X main.commitSHA=$COMMIT_SHA"

EXPOSE 8080

## Deploy 
FROM alpine:latest 

WORKDIR /root
# COPY ./pkg/templates/. /root

COPY --from=build /home/bookstore /root
COPY --from=build /home/main.go /root
COPY --from=build /home/image /root/image
COPY --from=build /home/templates/. /root/templates

ENTRYPOINT ["./bookstore"]