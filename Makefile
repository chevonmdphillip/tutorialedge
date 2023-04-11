build:
		env GOOS=linux GOARCH=amd64 go build -ldflags="-s -w" -o bin/main main.go 
deploy_prod: build
		sls deploy --verbose --stage prod