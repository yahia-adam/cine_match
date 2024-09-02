FROM python:3.12

RUN pip install --upgrade pip

WORKDIR /usr/app

COPY . .

RUN unzip -o artifacts.zip && pip install -r ./requirements.txt

EXPOSE 8501

HEALTHCHECK CMD curl --fail http://localhost:8501/_stcore/health

ENTRYPOINT ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]