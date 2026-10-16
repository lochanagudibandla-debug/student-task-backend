FROM eclipse-temurin:21-jdk
WORKDIR /app
COPY . .
RUN chmod +x mvnw
RUN ./mvnw -DskipTests package
CMD ["sh", "-c", "java -jar target/*.jar --server.port=${PORT:-8080}"]
