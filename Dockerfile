# Use a base image with Maven and Java pre-installed
FROM maven

# Set the working directory inside the container
WORKDIR /app

# Copy the project files to the working directory
COPY pom.xml /app/pom.xml
COPY src /app/src

# Build the project and run the tests
RUN mvn clean test

# Expose the port on which the application listens
EXPOSE 8080

# Specify the command to run when the container starts
CMD ["java", "-jar", "-cp" "target/classes", "com.mycompany.app.app"]
