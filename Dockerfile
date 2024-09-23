FROM python:3.10.8-slim
LABEL maintainer="anonimchik920@gmail.com"

ENV PYTHOUNNBUUFFERED 1

WORKDIR app/

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

CMD ["python", "app/main.py"]
