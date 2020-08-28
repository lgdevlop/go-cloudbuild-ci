FROM golang:1.14.4 as builder

WORKDIR /go/src/github.com/lgdevlop/go-cloudbuild-ci/src

COPY ./app/app.go .

COPY ./app/soma ./soma

RUN GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -a -installsuffix cgo -ldflags '-extldflags "-static"' -o app app.go && strip app

FROM scratch

COPY --from=builder /go/src/github.com/lgdevlop/go-cloudbuild-ci/src/app /app

CMD ["/app"]
