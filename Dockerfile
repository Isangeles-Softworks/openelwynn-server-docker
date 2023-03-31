# Using latest Go Alpine.
FROM golang:alpine
# Install Fire game server.
RUN go install github.com/isangeles/fire@latest
# Pull game content.
RUN apk add git
RUN git clone https://github.com/isangeles/elwynn /go/bin/data/modules/elwynn
# Create default users.
RUN mkdir -p /go/bin/data/users/ai
RUN echo $'pass:ai;\nchar-flags:igniteNpc' > /go/bin/data/users/ai/.user
RUN mkdir -p /go/bin/data/users/admin
RUN echo $'pass:admin;\nadmin:true;\nchar-flags:adminUserChar' > /go/bin/data/users/admin/.user
# Create the server config file.
RUN echo $'module:elwynn\nhost:\nport:8000' > /go/bin/.fire
# Expose game server port.
EXPOSE 8000
# Run server from gobin dir.
WORKDIR /go/bin
CMD [ "./fire" ]