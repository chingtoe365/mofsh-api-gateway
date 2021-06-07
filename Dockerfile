FROM java:8
VOLUME /tmp
EXPOSE 8080
ADD target/gs-gateway-0.1.0.jar app.jar
# COPY configs $HOME/configs
# CMD echo $HOME
WORKDIR /
CMD java -jar -Dspring.profiles.active=native,prod /app.jar
