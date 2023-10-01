# Build the application from source
FROM golang:1.20 AS build-stage

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download

COPY *.go ./

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -ldflags="-s -w" -o hello-world

# Deploy the application binary into a lean image
FROM scratch

WORKDIR /

COPY --from=build-stage /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY --from=build-stage /app/hello-world .
EXPOSE 8080
CMD ["/hello-world"]
