# Use a base image with OpenJDK 11
FROM openjdk:11-jre-slim

# Configura variables de entorno
ENV APP_NAME=spring-boot-app
ENV JAR_FILE=target/demo-0.0.1-SNAPSHOT.jar 

# Copia el archivo JAR al contenedor
COPY ${JAR_FILE} /app/${APP_NAME}.jar

# Establece el directorio de trabajo
WORKDIR /app

# Expone el puerto en el que la aplicación se ejecutará
EXPOSE 80

# Comando para ejecutar la aplicación cuando se inicia el contenedor
CMD ["java", "-jar", "${APP_NAME}.jar"]
