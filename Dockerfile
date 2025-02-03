FROM openjdk:21-jdk-slim
LABEL authors="nagamalleswarikolluri"
WORKDIR /app
COPY target/receiptProcessor-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
EXPOSE 8080