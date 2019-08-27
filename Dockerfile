FROM socrata/java8
WORKDIR /kafka
ADD start.sh .
ADD server.properties .
RUN curl -O https://www-eu.apache.org/dist/kafka/2.1.1/kafka_2.11-2.1.1.tgz \
        && tar xvf kafka_2.11-2.1.1.tgz \
        && chmod +x start.sh && mkdir -p /data/kafka
CMD ./start.sh


