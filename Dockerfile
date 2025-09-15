# =========================
# Stage 1: Build WAR using Maven
# =========================
FROM maven:3.9.6-eclipse-temurin-17 AS build

WORKDIR /app

# Copy pom.xml and download dependencies first (cache optimization)
COPY pom.xml .
RUN mvn dependency:go-offline -B

# Copy source code and build WAR
COPY src ./src
RUN mvn clean package -DskipTests

# =========================
# Stage 2: Run on Tomcat
# =========================
FROM tomcat:9.0-jdk17

# Remove default ROOT app
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy WAR from build stage
COPY --from=build /app/target/meesho-website.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]

