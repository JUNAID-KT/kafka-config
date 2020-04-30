# Kafka and Kafka connector setup #

This file contains the instructions and the steps to run setup .

### How to run ###

* Run the docker-compose file with the following command - docker-compose up --build -d
* It will create 1 zookeeper and 3 kafka brokers
* It will also create temporary container - kafka-topics-creator

 

### Manually creating the topics and the streams/queries ###

* Exec to any kafka broker container
  * Run the command: kafka-topics --create --zookeeper zookeeper:2181 --replication-factor 1 --partitions 3 --topic <topic_name>


### References ###

* https://github.com/lensesio/kafka-cheat-sheet
* https://docs.confluent.io/current/

