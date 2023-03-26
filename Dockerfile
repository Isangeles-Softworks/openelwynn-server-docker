# Using latests Go Alpine.
FROM golang:alpine
# Install Fire game server.
RUN go install github.com/isangeles/fire@latest
# Pull game content.
RUN apk add git
RUN git clone https://github.com/isangeles/elwynn /go/bin/data/modules/elwynn
# Copy server config fire and default users.
COPY .fire /go/bin/.fire
COPY data/users /go/bin/data/users
# Expose game server port.
EXPOSE 8000
# Run server from gobin dir.
WORKDIR /go/bin
CMD [ "./fire" ]