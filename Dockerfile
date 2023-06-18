FROM golang

WORKDIR /src

COPY . .

RUN go mod download 

RUN go build main.go

EXPOSE 8000

ENTRYPOINT ["./main"]