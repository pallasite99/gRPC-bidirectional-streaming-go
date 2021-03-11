all: client server

protoc:
	@echo "Generating Go files"
	cd proto && protoc --go_out=plugins=grpc:. *.proto

server: protoc
	@echo "Building server"
	#go build -o server \
		#github.com/pahanini/go-grpc-bidirectional-streaming-example/src/server

	go build -o server github.com/pallasite99/gRPC-bidirectional-streaming-go/tree/master/server

client: protoc
	@echo "Building client"
	#go build -o client \
		#github.com/pahanini/go-grpc-bidirectional-streaming-example/src/client
	
	go build -o client github.com/pallasite99/gRPC-bidirectional-streaming-go/tree/master/client
clean:
	go clean github.com/pallasite99/gRPC-bidirectional-streaming-go/...
	rm -f server client

.PHONY: client server protoc
