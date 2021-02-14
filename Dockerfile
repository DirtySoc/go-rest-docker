FROM golang:latest
LABEL Name="go-rest-docker" Version=0.0.1

WORKDIR /go/src
RUN git clone https://github.com/DirtySoc/go-rest-api.git

WORKDIR /go/src/go-rest-api
RUN go get
RUN go install

CMD [ "go-rest-api" ]

EXPOSE 10000/tcp