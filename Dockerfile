FROM golang:1.13.5-buster


RUN go get -u github.com/golang/dep/cmd/dep

RUN apt-get update && apt-get install ruby ruby-dev rubygems build-essential rpm -y && apt-get clean

RUN gem install --no-document fpm