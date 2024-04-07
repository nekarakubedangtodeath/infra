curl -X GET -H "Accept:application/json" -H  "Content-Type:application/json" http://localhost:8083/connectors/$1|jq '. | del(.tasks)| del(.type) |del (.config.name)'
