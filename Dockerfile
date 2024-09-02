FROM python:3.12

RUN pip install --upgrade pip \
    apt-get update && apt-get install -y \
    build-essential \
    curl \
    software-properties-common \
    git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/app

RUN git clone git@github.com:yahia-adam/cine_match.git .

RUN unzip artifacts.zip && pip install -r ./requirements.txt

EXPOSE 8501

HEALTHCHECK CMD curl --fail http://localhost:8501/_stcore/health

ENTRYPOINT ["streamlit", "run", "streamlit_app.py", "--server.port=8501", "--server.address=0.0.0.0"]