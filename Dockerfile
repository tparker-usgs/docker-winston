FROM centos:7 AS build
WORKDIR /app
COPY VERSION .
COPY build.sh .
RUN ./build.sh

FROM openjdk:8
COPY --from=build /app/ /app/
ENV CLASSPATH=/app/winston/lib

WORKDIR /winston
