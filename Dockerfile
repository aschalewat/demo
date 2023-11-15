FROM openjdk:8

RUN addgroup --gid 100001 ascha \
    && adduser --uid 10002 --ingroup ascha --no-create-home --disable-password --gecos "" ascha

ARG JAR_FILE=target/*.jar
EXPOSE 8088
COPY ${JAR_FILE} app.jar
RUN chown ascha:ascha /app.jar
USER ascha
ADD target/video-streaming-services-0.0.1-SNAPSHOT.jar video-streaming-services-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/demo-0.0.1-SNAPSHOT.jar"]