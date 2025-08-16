#!/bin/bash

echo "🛑 Docker Jupyter Lab 종료 중..."

docker-compose down

if [ $? -eq 0 ]; then
    echo "✅ Jupyter Lab이 정상적으로 종료되었습니다."
else
    echo "❌ 종료 중 오류가 발생했습니다."
    exit 1
fi