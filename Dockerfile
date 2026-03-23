FROM eclipse-temurin:17-jdk

WORKDIR /opt/Lavalink

# Download Lavalink automatically
ADD https://github.com/lavalink-devs/Lavalink/releases/latest/download/Lavalink.jar Lavalink.jar

# Copy config
COPY application.yml application.yml

# Run Lavalink with safe memory
CMD ["java", "-Xmx512M", "-jar", "Lavalink.jar"]
