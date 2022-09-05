
FROM satoshegen/alpine-java8:8u202_jdk
RUN apk add curl vim
ADD target/spring-boot-rest-example-0.5.0.war spring-boot-rest-example-0.5.0.war

HEALTHCHECK CMD curl --fail http://localhost:8091/ || exit 1

EXPOSE 8091

ENTRYPOINT [ "sh", "-c", "java -jar spring-boot-rest-example-0.5.0.war" ]