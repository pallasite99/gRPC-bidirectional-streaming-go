all: client server

protoc:
	@echo "Generating Go files"
	cd proto && protoc --go_out=plugins=grpc:. *.proto

server: protoc
	@echo "Building server"
	#go build -o server \
		#github.com/pahanini/go-grpc-bidirectional-streaming-example/src/server

	go build -o ser github.com/pallasite99/gRPC-bidirectional-streaming-go/server

client: protoc
	@echo "Building client"
	#go build -o client \
		#github.com/pahanini/go-grpc-bidirectional-streaming-example/src/client
	
	go build -o cli github.com/pallasite99/gRPC-bidirectional-streaming-go/client
clean:
	go clean github.com/pallasite99/gRPC-bidirectional-streaming-go/...
	rm -f ser cli

.PHONY: client server protoc
