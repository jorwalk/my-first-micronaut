FROM openjdk:14-alpine
COPY build/libs/demo-*-all.jar demo.jar
EXPOSE 80
ENV MICRONAUT_SERVER_PORT=80
CMD ["java", "-Dcom.sun.management.jmxremote", "-Xmx128m", "-jar", "demo.jar"]