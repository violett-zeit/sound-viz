#!/bin/bash

echo "🐳 Docker로 Jupyter Lab 실행"
echo ""

if [ ! -f "docker-compose.yml" ]; then
    echo "❌ docker-compose.yml 파일을 찾을 수 없습니다."
    echo "프로젝트 루트 디렉토리에서 실행하세요."
    exit 1
fi

echo "컨테이너 시작 중..."
docker-compose up -d

if [ $? -eq 0 ]; then
    echo "✅ Jupyter Lab이 시작되었습니다!"
    echo ""
    echo "접속 정보:"
    echo "  URL: http://localhost:8888"
    echo "  토큰: sound-2025"
    echo ""
    echo "종료하려면: docker-compose down"
else
    echo "❌ 컨테이너 시작 실패!"
    exit 1
fi