# vi: ft=make
.PHONY: proto get

proto:
	go get github.com/golang/protobuf/protoc-gen-go
	protoc -I . reminder/*.proto --go_out=plugins=grpc:$$GOPATH/src
	protoc -I . summarizer/*.proto --go_out=plugins=grpc:$$GOPATH/src

get:
	go get -u -t ./...
