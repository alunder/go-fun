GOOS=darwin go-bindata-assetfs -ignore='^(public/node_modules|public/dl)' ./public/...

CGO_ENABLED=1 GOOS=darwin go build -ldflags -s -o brook .
mv brook Brook.app/Contents/MacOS/
