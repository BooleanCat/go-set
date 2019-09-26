.PHONY: test

ginkgo := go run github.com/onsi/ginkgo/ginkgo --race --randomizeAllSpecs
lint := go run github.com/golangci/golangci-lint/cmd/golangci-lint
goimports := go run golang.org/x/tools/cmd/goimports

fmt:
	$(goimports) -w .
	go fmt ./...

lint:
	$(lint) run

test: lint
	$(ginkgo) -r .
