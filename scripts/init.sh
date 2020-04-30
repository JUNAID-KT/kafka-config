#bin/sh
echo "=====================================Creating Connector============================================="
data='
{
  "name": "elasticsearch-sink",
  "config": {
    "connector.class": "io.confluent.connect.elasticsearch.ElasticsearchSinkConnector",
    "tasks.max": "1",
    "topics": "posts,users,events",
    "key.ignore": "true",
    "schema.ignore": "true",
    "connection.url": "http://elasticsearch:9200",
    "connection.username": "elastic",
    "connection.password": "YWRhcHRAYmZjZGF0YS5jb20K",
    "type.name": "_doc",
    "name": "elasticsearch-sink",
    "errors.tolerance": "all"
  }
}
'

sed -i 's/\r$//' $data
echo $data
curl -v -H "Content-Type: application/json" --data "$data" http://elastic-connect:8084/connectors

