{
  "name": "jdbc-sink-connector",
  "config": {
    "connector.class": "io.confluent.connect.jdbc.JdbcSinkConnector",
    "tasks.max": "1",
    "topics": "database_name.table_name",
    "connection.url": "jdbc:mysql://127.0.0.1:3306/target_database",
    "connection.user": "mysql",
    "connection.password": "",
    "insert.mode": "upsert",
    "pk.mode": "record_key",
    "pk.fields": "id",
    "auto.create": "true"
  }
}
