# gRPC-bidirectional-streaming-go 
(tested on Linux-Ubuntu 16.04 Xenial Xerus)

* An example to implement gRPC bidirectional streaming calls using Go and Protobuf

### Requirements
1. protoc (v3.x and above)
2. go (v1.16)
3. protoc plugin for go
4. go implementation of gRPC (using ```go get``` command)
5. Some additional ```go get``` commands may be required if Makefile can't resolve them.

(These are included in **go.mod** file in require manually for reference)

## If you want to generate your own go.mod file

Enter in terminal:

```terminal
go mod init <link-to-github-repo>
```

## To resolve conflicts with go modules like version:latest, upgrade, etc...

Enter in terminal:

```terminal
go mod tidy
```

* This should fetch any missing dependencies

