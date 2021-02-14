FROM openjdk:14.0.2-jdk

VOLUME /tmp

EXPOSE 8080

COPY /target/carShop.jar carShop.jar

COPY /docker-compose/wait-for-it.sh /wait-for-it.sh

RUN chmod +x /wait-for-it.sh

CMD  ["java","-jar","-Dspring.profiles.active=prod","carShop.jar"]
