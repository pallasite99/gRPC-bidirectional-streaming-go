#! /bin/bash

sudo apt install unzip 

# Make sure you grab the latest version of protoc
curl -OL https://github.com/google/protobuf/releases/download/v3.6.1/protoc-3.6.1-linux-x86_64.zip

# Unzip
unzip protoc-3.6.1-linux-x86_64.zip -d protoc3

# Move protoc to /usr/local/bin/
sudo mv protoc3/bin/* /usr/local/bin/

# Move protoc3/include to /usr/local/include/
sudo mv protoc3/include/* /usr/local/include/

#Load the config for protoc
sudo ldconfig

# Download golang-go 1.16
curl -OL https://golang.org/dl/go1.16.2.linux-amd64.tar.gz

# Remove previous installation of go (if present)
# Then extract the files to /usr/local directory
sudo rm -rf /usr/local/go && tar -C /usr/local -xzf go1.16.2.linux-amd64.tar.gz

# Install protocol compiler plugins for Go
export GO111MODULE=on  # Enable module mode
go get google.golang.org/protobuf/cmd/protoc-gen-go \
         google.golang.org/grpc/cmd/protoc-gen-go-grpc

go get -u github.com/golang/protobuf/protoc-gen-go
# Update your PATH so that the protoc compiler can find the plugins:
export PATH=$PATH:/usr/local/go/bin
export PATH="$PATH:$(go env GOPATH)/bin"

#Load the config once again (just to be safe)
sudo ldconfig
