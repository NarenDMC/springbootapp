# Use a lightweight Java 11 base image
FROM eclipse-temurin:17-jre-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from your build directory to the container
COPY /complete/target/*.jar serving-web-content-complete-0.0.1-SNAPSHOT.jar

# Expose the port your app runs on
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "serving-web-content-complete-0.0.1-SNAPSHOT.jar"]