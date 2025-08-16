# 🎵 음원 분석 수업

음원 분석 및 디지털 신호처리 연구를 위한 과정이다. Python과 데이터 분석 라이브러리를 활용하여 음원 데이터를 과학적으로 분석하고 실험하자.

## 📚 수업 목표

- 디지털 신호처리 연구를 위한 데이터 분석 기법 습득
- NumPy, Pandas, Plotly 등 연구에 필수적인 라이브러리 마스터
- 음원 데이터를 활용한 실험 방법론 및 재현 가능한 연구 설계
- 탐색적 데이터 분석(EDA)과 과학적 시각화 기법
- 머신러닝 기반 음원 분류 알고리즘 개발 및 평가

## 🚀 시작하기

### Docker 환경 (추천)

1. Docker와 Docker Compose 설치
2. 프로젝트 클론 및 실행:

```bash
git clone https://github.com/violett-zeit/sound-viz.git
cd sound-viz
docker-compose up
```

3. 브라우저에서 http://localhost:8888 접속
4. 토큰: `sound-2025` 입력

### 로컬 환경

1. Python 3.10+ 설치
2. 필요 패키지 설치:

```bash
pip install -r requirements.txt
```

3. Jupyter Lab 실행:

```bash
jupyter lab
```

## 📖 커리큘럼

### 1주차: NumPy 기초와 배열 연산

**학습 목표**: 데이터 분석의 기반이 되는 NumPy 이해

- NumPy 배열 생성과 인덱싱
- 배열 연산과 브로드캐스팅
- 기본 통계 함수 (mean, std, min, max)
- 오디오 데이터를 배열로 다루기 기초

### 2주차: Pandas 데이터프레임 마스터

**학습 목표**: 구조화된 데이터 다루기

- Series와 DataFrame 생성
- 데이터 선택, 필터링, 정렬
- groupby와 집계 함수
- 결측치 처리

### 3주차: 오디오 파일 처리와 변환

**학습 목표**: 오디오를 데이터로 변환하는 전체 파이프라인 이해

- librosa로 오디오 파일 읽기
- 샘플링 레이트 이해
- 시간/주파수 도메인 변환 (FFT)
- 오디오 특징 추출 (MFCC, Spectral features)

### 4주차: Plotly로 인터랙티브 시각화

**학습 목표**: 데이터를 효과적으로 시각화하기

- Plotly 기본 차트 (line, bar, scatter)
- 인터랙티브 기능 활용
- 서브플롯과 레이아웃
- 오디오 파형과 스펙트로그램 시각화

### 5주차: 탐색적 데이터 분석 (EDA)

**학습 목표**: 데이터를 체계적으로 분석하는 방법 학습

- 기술통계와 분포 확인
- 상관관계 분석
- 이상치 탐지
- 데이터 전처리 파이프라인

### 6주차: PCA와 차원 축소

**학습 목표**: 고차원 데이터를 이해하고 시각화하기

- PCA 직관적 이해 (분산 최대화)
- StandardScaler로 정규화
- 주성분 해석
- 2D/3D 시각화

### 7주차: 기초 머신러닝 - 분류

**학습 목표**: 지도학습의 기본 개념 이해

- Train/Test 분할
- K-Nearest Neighbors (가장 직관적)
- Decision Tree (시각화 가능)
- 정확도, 혼동행렬

### 8주차: 기초 머신러닝 - 클러스터링

**학습 목표**: 비지도학습으로 패턴 찾기

- K-Means 클러스터링
- 최적 클러스터 수 찾기 (Elbow method)
- 클러스터 시각화
- 클러스터 특징 해석

### 9주차: 종합 프로젝트

**학습 목표**: 전체 파이프라인 구축

- **옵션 1**: 음악 추천 시스템
- **옵션 2**: 음성/음악 분류기

각 주차마다 연구 논문에 활용 가능한 실험 방법과 결과 분석 기법이 포함되어 있다.

## 🛠 개발 환경

### Docker 환경 (권장)

```bash
# 방법 1: 스크립트 사용
bash scripts/run_jupyter.sh

# 방법 2: 직접 실행
docker-compose up -d
```

- **접속 URL**: http://localhost:8888
- **토큰**: `sound-2025`
- **종료**: `docker-compose down`

### 로컬 환경

이미 Python 환경이 구성되어 있다면:

```bash
pip install -r requirements.txt
jupyter lab
```

자세한 배포 방법은 [배포 및 자동화](deployment.md) 페이지를 참고하자.

## 📊 연구에 사용할 주요 라이브러리

```python
# 데이터 분석 및 수치 연산
import numpy as np
import pandas as pd
import scipy.stats as stats

# 과학적 시각화 및 그래프
import matplotlib.pyplot as plt
import seaborn as sns
import plotly.express as px
import plotly.graph_objects as go

# 음원 및 신호처리
import librosa
import soundfile as sf
from scipy import signal

# 머신러닝 및 통계 분석
from sklearn.model_selection import train_test_split, cross_val_score
from sklearn.neighbors import KNeighborsClassifier
from sklearn.tree import DecisionTreeClassifier
from sklearn.cluster import KMeans
from sklearn.decomposition import PCA
from sklearn.preprocessing import StandardScaler
from sklearn.metrics import classification_report, confusion_matrix
```

## 🎓 연구 활용 및 인용

이 커리큘럼의 실험 방법과 결과를 연구 논문에 활용할 수 있다:

- 디지털 신호처리 연구의 예비 실험 및 방법론 검증
- 음원 분류 알고리즘의 성능 비교 실험
- 데이터셋 전처리 및 시각화 기법 논문 작성
- 머신러닝 모델의 비교 실험 및 통계적 검증

## 📝 라이선스

이 프로젝트는 연구 및 교육 목적으로 자유롭게 사용할 수 있다.

## 💬 질문하기

학습 중 궁금한 점이나 문제가 생기면 [GitHub Discussions](https://github.com/violett-zeit/sound-viz/discussions)에서 언제든지 질문하자.

## 🤝 연구 협력

연구 방법론 개선 아이디어는 언제든지 환영한다

---

**강사**: 전윤배  
**e-mail**: violett.zeit@gmail.com
