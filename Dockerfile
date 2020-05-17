# Use Alpine Linux for minimal image size
FROM openjdk:8-alpine
RUN apk add --no-cache wget ttf-dejavu grep

ARG USER_ID
ARG GROUP_ID
ARG INTERNAL_USER=irpf

RUN addgroup --gid ${GROUP_ID} ${INTERNAL_USER}
RUN adduser --disabled-password --gecos "" --home "/home/${INTERNAL_USER}"  --ingroup "$INTERNAL_USER" --uid "$USER_ID" ${INTERNAL_USER}

USER irpf
VOLUME /home/irpf/ProgramasRFB

WORKDIR /home/irpf

ADD ./helpers ./helpers

RUN ./helpers/build.sh
CMD ./helpers/run.sh
