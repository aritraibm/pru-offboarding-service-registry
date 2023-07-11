#cmd : docker build -t service-registry .
FROM openjdk:17-jdk-slim

# Set the working directory to /app
WORKDIR /app

# Copy the Eureka server JAR file to the container
COPY target/service-registry.jar /app

# Expose the default Eureka server port
EXPOSE 8761

# Start the Eureka server
CMD ["java", "-jar", "service-registry.jar"]