## gRPC-bidirectional-streaming-go 
(tested on Linux-Ubuntu 16.04 Xenial Xerus)

![go-gRPC bidirectional streaming](https://miro.medium.com/max/700/1*Ug3CAac6nPclg87bxmRBoA.png)

* An example to implement gRPC bidirectional streaming calls using Go and Protobuf

#### Requirements
1. protoc (v3.x and above)
2. go (v1.16)
3. git
4. protoc plugin for go
5. go implementation of gRPC (using ```go get``` command)
6. Some additional ```go get``` commands may be required if Makefile can't resolve them.

(You can install these manually [very painful] or use the `req-gRPC.sh` file provided for Ubuntu 16.04)

## If you want to generate proto headers for Go manually
* cd into the proto directory and enter in terminal:

```terminal
protoc --go_out=. --go_opt=paths=source_relative --go-grpc_out=. --go-grpc_opt=paths=source_relative users.proto
```

## Generating a go.mod file

* Enter in terminal:

```terminal
go mod init <link-to-github-repo>
```

* This file is required else you will get a ***package is not part of a module*** error

## To resolve conflicts with go modules like version:latest, upgrade, etc...

* Enter in terminal:

```terminal
go mod tidy
```

* This formats the go.mod file

## To build this example

* Enter in terminal

```terminal
make all
```
* This command will generate proto headers, client and server executables

## Running the example

1. First start the server with the command:

```terminal
./ser
```

2. Then start the client using the command:

```terminal
./cli
```

* As the output you will see a stream of messages with requests on server and corresponding responses on the client side as a gRPC bidirectional stream.
