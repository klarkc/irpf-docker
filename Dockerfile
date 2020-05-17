# Use Alpine Linux for minimal image size
FROM openjdk:8-alpine
RUN apk add --no-cache wget ttf-dejavu grep

# Run as a normal user, not root
RUN adduser -D -u 1000 irpf
USER irpf

WORKDIR /home/irpf

VOLUME /home/irpf/ProgramasRFB

ADD ./helpers /home/irpf/helpers

# Download and expand the app into ~/app
RUN helpers/build.sh

CMD helpers/run.sh
