FROM python:3.12.5-slim-bullseye

WORKDIR /app

COPY requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt -U --trusted-host pypi.org --trusted-host pypi.python.org --trusted-host files.pythonhosted.org

COPY main.py /app/main.py

EXPOSE 80

CMD [ "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80" ]
