# Base image
FROM alpine:latest

# Install
RUN apk add --no-cache tinc iptables

# Set startup command
CMD ["tincd", "--no-detach", "--debug=3"]
