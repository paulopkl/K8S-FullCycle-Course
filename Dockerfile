FROM golang:1.18.3-alpine3.16
WORKDIR /usr/app
RUN apk add --no-cache bash
COPY . .

ENV NAME "PaUlO rIcArDo"
ENV AGE 20
ENV USER "pauloradea@hotmail.com"
ENV PASSWORD "PAUL0123"

RUN go build -o server .
EXPOSE 8080
CMD [ "./server" ]