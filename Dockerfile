FROM eclipse-temurin:17-jre-alpine
WORKDIR /app

# Copy the JAR from the "complete/target" directory (relative to the root)
COPY complete/target/serving-web-content-complete-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]