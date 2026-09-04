# Step 1: Base image. Humein JAR chalane ke liye Java chahiye, isliye hum pre-built Java image le rahe hain
FROM openjdk:11-jre-slim

# Step 2: Container ke andar ek working directory banayenge
WORKDIR /app

# Step 3: Humari banayi hui JAR file ko 'target' folder se container ke andar copy karenge
COPY target/*.jar app.jar

# Step 4: Jab container start hoga, toh yeh command run hogi (JAR file chalane ke liye)
CMD ["java", "-jar", "app.jar"]
