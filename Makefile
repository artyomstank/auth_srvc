.PHONY: generate gen

gen: generate

generate:
	protoc -I protos/proto \
		protos/proto/sso/sso.proto \
		--go_out=./protos/gen/go --go_opt=paths=source_relative \
		--go-grpc_out=./protos/gen/go --go-grpc_opt=paths=source_relative
