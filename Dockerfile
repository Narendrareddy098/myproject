FROM openjdk:17-jdk-slim
WORKDIR /app
COPY ./ app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]

