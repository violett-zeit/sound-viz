#!/bin/bash

echo "📚 Docker에서 노트북 출력 정리 중..."

docker-compose run --rm jupyter bash -c "
    for notebook in lessons/*.ipynb extra/*.ipynb; do
        if [ -f \"\$notebook\" ]; then
            echo \"  - \$(basename \"\$notebook\") 정리 중...\"
            jupyter nbconvert --clear-output --inplace \"\$notebook\"
        fi
    done
"

echo "✨ 노트북 정리 완료!"