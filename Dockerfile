FROM openjdk
WORKDIR /app
ADD target/order-service.jar order-service.jar
ADD opentelemetry-javaagent.jar opentelemetry-javaagent.jar
ENTRYPOINT java -javaagent:opentelemetry-javaagent.jar -jar order-service.jar


