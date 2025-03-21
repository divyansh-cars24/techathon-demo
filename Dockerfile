# Use official OpenJDK as base image
FROM eclipse-temurin:17-jdk

# Set working directory in the container
WORKDIR /app

# Copy build artifact into container
COPY target/*.jar app.jar

# Expose application port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
