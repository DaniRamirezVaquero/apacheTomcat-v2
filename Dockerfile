# Java 17
FROM eclipse-temurin:17-jdk-alpine AS Build

# Copy the source code

#Create a temporary directory to store the source code
WORKDIR /temp_app

#Copy the source code and the gradle files to the temporary directory
COPY src src
COPY settings.gradle .
COPY gradlew .
COPY *.gradle .
COPY gradle/wrapper gradle/wrapper

#Compile the source code
RUN chmod +x gradlew
RUN ./gradlew war


# Tomcat
FROM tomcat:10.0.18-jre17-temurin-focal AS Server

# Copy the war file to the webapps directory
COPY --from=Build /temp_app/build/libs/*.war ${CATALINA_HOME}/webapps/hola.war
