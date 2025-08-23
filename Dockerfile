FROM python:3.10-slim

WORKDIR /app

# Install system dependencies for audio processing and Korean fonts
RUN apt-get update && apt-get install -y \
    libsndfile1 \
    ffmpeg \
    fonts-nanum \
    fontconfig \
    && fc-cache -fv \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Copy and install Python dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8888

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]