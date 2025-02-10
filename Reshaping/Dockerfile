FROM openjdk:17-jdk-slim
COPY . /app
WORKDIR /app
RUN ./mvnw clean package
CMD ["java", "-jar", "target/my-spring-mvc-app-0.0.1-SNAPSHOT.jar"]
