FROM eclipse-temurin:17-jdk

WORKDIR /app

COPY . .

RUN chmod +x Lavalink.jar

EXPOSE 2333

CMD ["java", "-jar", "Lavalink.jar"]
