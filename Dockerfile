FROM golang:1.19-alpine

WORKDIR /home
ARG COMMIT_SHA

COPY ./pkg .

RUN go mod download

RUN  go build -o bookstore  -ldflags "-X main.commitSHA=$COMMIT_SHA"

EXPOSE 8080

CMD ["./bookstore"]
