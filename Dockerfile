# Use OpenJDK 17 to run the application
FROM openjdk:21-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the compiled JAR file into the container
COPY event-echo-0.0.1-SNAPSHOT.jar app.jar

# Expose a volume for temporary storage
VOLUME /tmp

# Specify the entrypoint to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
