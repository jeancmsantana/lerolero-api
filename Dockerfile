FROM python:3.9-slim

COPY ./src /app/src
COPY ./requirements.txt /app

WORKDIR /app

RUN pip3 install -r requirements.txt

EXPOSE 7070

WORKDIR /app/src

CMD ["uvicorn","api:app","--host=0.0.0.0","--reload","--port", "7070"]