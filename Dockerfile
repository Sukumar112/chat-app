FROM eclipse-temurin:17

WORKDIR /app

COPY . /app

RUN ./mvnw clean package -DskipTests

EXPOSE 8080

CMD ["java", "-jar", "target/chat-app-0.0.1-SNAPSHOT.jar"]
