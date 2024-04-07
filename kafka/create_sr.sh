#!/bin/bash

# 사용법: ./register_schema.sh schema_file.json schema_registry_url subject_name

if [ "$#" -ne 2 ]; then
    echo "사용법: $0 <schema-file> <subject-name>"
    exit 1
fi

SCHEMA_FILE=$1
SCHEMA_REGISTRY_URL=127.0.0.1:8081 # 향후변경 시 수정
SUBJECT_NAME=$2

# 입력 파일에서 스키마를 읽어와서 JSON 문자열로 변환
SCHEMA_JSON=$(jq tostring $SCHEMA_FILE)

# 변환된 스키마를 스키마 레지스트리에 등록
curl -X POST -H "Content-Type: application/vnd.schemaregistry.v1+json" \
     --data "{\"schema\": $SCHEMA_JSON}" \
     "${SCHEMA_REGISTRY_URL}/subjects/${SUBJECT_NAME}/versions"

echo "\n스키마가 ${SUBJECT_NAME} 주제로 스키마 레지스트리에 등록되었습니다."

