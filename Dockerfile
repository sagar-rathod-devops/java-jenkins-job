# Use the OpenJDK image
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the JAR file (assuming it's built in the target directory)
COPY target/*.jar app.jar

# Expose the application port (change if needed)
EXPOSE 8000

# Run the application
CMD ["java", "-jar", "app.jar"]
