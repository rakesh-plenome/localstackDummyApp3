# Use Go base image
FROM golang:1.20

# Set the working directory
WORKDIR /app

# Clone the repository
RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/rakesh-plenome/localstackDummyApp3.git /app

# Build the Go application
RUN go mod tidy && go build -o app .

# Expose the application port
EXPOSE 8083

# Start the application
CMD ["./app"]
