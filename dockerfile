FROM adoptopenjdk/openjdk11:latest
ENV DBURL tp_devops
ENV USER tp_devops
ENV PASS tp_devops
COPY . /usr/app/
WORKDIR /usr/app/build/libs/
EXPOSE 8080
ENTRYPOINT java -Ddatabase.url=$DBURL -Ddatabase.username=$USER -Ddatabase.password=$PASS -jar tp-docker-1.0.0.jar
