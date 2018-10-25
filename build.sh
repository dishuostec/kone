#!/bin/ash

rm kone-*

for GOOS in linux; do
    for GOARCH in arm64; do
        export GOARCH=${GOARCH}
        export GOOS=${GOOS}

        go build -v -o kone-$GOOS-$GOARCH
    done
done
