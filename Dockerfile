# Use a base image with OpenJDK 11
FROM openjdk:17-jdk-slim
USER root
COPY target/*.jar app.jar
EXPOSE 80
USER 1001
ENTRYPOINT ["java","-jar","app.jar"]