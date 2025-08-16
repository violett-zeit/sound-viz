# 📦 배포 및 자동화

## GitHub Actions 자동 배포

이 프로젝트는 GitHub Actions를 통해 자동으로 GitHub Pages에 배포된다.

### 배포 프로세스

1. `main` 브랜치에 코드가 push되면 자동으로 배포 프로세스가 시작된다
2. GitHub Actions가 Jupyter Book을 빌드한다
3. 빌드된 HTML 파일들이 GitHub Pages에 자동으로 배포된다
4. https://violett-zeit.github.io/sound-viz/ 에서 확인할 수 있다

### 워크플로우 파일

`.github/workflows/deploy.yml` 파일에 정의된 워크플로우:

- Python 3.10 환경 설정
- 필요한 패키지 설치 (requirements.txt)
- Jupyter Book 빌드
- GitHub Pages 배포

### 수동 빌드

로컬에서 수동으로 빌드하려면:

```bash
# Docker 환경
docker-compose run jupyter jupyter-book build .

# 로컬 환경
jupyter-book build .
```

빌드된 파일은 `_build/html/` 디렉토리에 생성된다.

### 주의사항

- `main` 브랜치에 직접 push하면 자동 배포가 시작되니 주의하자
- 큰 변경사항은 별도 브랜치에서 작업 후 Pull Request를 통해 병합하는 것이 좋다
- 빌드 시 경고가 에러로 처리되므로 (`--warningiserror` 옵션) 모든 경고를 해결해야 한다