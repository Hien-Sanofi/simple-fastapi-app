FROM python:3.12.5-slim-bullseye

WORKDIR /app

COPY requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt -U

COPY main.py /app/main.py

EXPOSE 8080

CMD [ "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080" ]
