FROM golang:1.19-alpine

WORKDIR /home

COPY ./pkg .

RUN go mod download

RUN  go build -o bookstore

EXPOSE 8080

CMD ["./bookstore"]
