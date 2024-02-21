FROM eclipse-temurin:17-jre-alpine

WORKDIR /app
COPY target/spring-boot-2-hello-world-1.0.2-SNAPSHOT.jar ./
CMD ["java", "-jar", "spring-boot-2-hello-world-1.0.2-SNAPSHOT.jar"]
