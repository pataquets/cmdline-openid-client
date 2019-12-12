FROM golang

COPY . /go/src/github.com/ajanthan/cmdline-openid-client/
WORKDIR /go/src/github.com/ajanthan/cmdline-openid-client/

RUN go build -v /go/src/github.com/ajanthan/cmdline-openid-client/cmd/openid-client.go

ENTRYPOINT [ "./openid-client" ]
CMD [ "-help" ]
