FROM golang:1.21-alpine AS builder
WORKDIR /app
COPY . .
RUN go build -o ravid main.go

# Run stage
FROM alpine:3.19
WORKDIR /app
COPY --from=builder /app/ravid .
EXPOSE 6699
CMD ["./ravid"]