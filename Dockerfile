# Use a base image with Java installed
FROM openjdk:8-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the WAR file into the container at /app
COPY springMVC.war /app

# Expose the port that the Spring application will run on
EXPOSE 8080

# Command to run the Spring application when the container starts
CMD ["java", "-jar", "springMVC.war"]
