go clean -i net && go install -tags netgo std && CGO_ENABLED=0 go get -a -ldflags '-s' $REPO_PATH && cp -f $GOPATH/bin/* /output/.

GOOS=linux go build -ldflags="-s -w" ./cmd/bump



