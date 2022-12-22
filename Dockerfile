FROM maven:3.8.5-openjdk-18

RUN mkdir /app
COPY ./aws-glue-schema-registry /app/

WORKDIR /app
RUN mvn verify --fail-never
RUN mvn install -DskipTests -Dcheckstyle.skip