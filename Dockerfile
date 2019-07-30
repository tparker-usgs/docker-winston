FROM centos:7 AS build
RUN yum install -y wget unzip
WORKDIR /app
COPY VERSION .
COPY build.sh .
RUN ./build.sh

FROM openjdk:8
COPY --from=build /app/winston/ /app/winston/
ENV CLASSPATH=/app/winston/lib/winston.jar
WORKDIR /winston
RUN chmod 777 .
ENTRYPOINT ["java"]
