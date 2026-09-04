# Step 1: Industry-standard Eclipse Temurin Java 11 image
FROM eclipse-temurin:11-jre-alpine

# Step 2: Container ke andar ek working directory banayenge
WORKDIR /app

# Step 3: JAR file ko target folder se copy karna
COPY target/*.jar app.jar

# Step 4: Container start hone par JAR chalane ki command
CMD ["java", "-jar", "app.jar"]
