FROM java:openjdk-7-jre
VOLUME /tmp
ADD target/hello-world-1-SNAPSHOT.jar app.jar
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]