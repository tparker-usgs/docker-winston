FROM centos:7 AS build
RUN yum install -y wget unzip
WORKDIR /app
COPY VERSION .
COPY build.sh .
RUN ./build.sh
RUN echo TOMP SAYS HI
RUN ls /app/

FROM openjdk:8
COPY --from=build /app/ /app/
ENV CLASSPATH=/app/winston/lib

WORKDIR /winston
