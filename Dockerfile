FROM golang:1.19-alpine AS build

WORKDIR /home

COPY ./pkg .

RUN go mod download

ARG COMMIT_SHA
ENV COMMIT_SHA=$COMMIT_SHA
RUN  go build -o bookstore -ldflags "-X main.commitSHA=$(COMMIT_SHA)"

RUN echo ${COMMIT_SHA}
EXPOSE 8080

## Deploy 
FROM alpine:latest 

WORKDIR /root
# COPY ./pkg/templates/. /root
ARG COMMIT_SHA
ENV COMMIT_SHA=$COMMIT_SHA


COPY --from=build /home/bookstore /root
COPY --from=build /home/main.go /root
COPY --from=build /home/image /root/image
COPY --from=build /home/templates/. /root/templates

ENTRYPOINT ["./bookstore"]