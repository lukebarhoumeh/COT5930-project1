#https://developer.skao.int/en/latest/howto/docker-vscode.html
FROM python:3.9-slim


WORKDIR /app


COPY . /app


RUN pip install -r requirements.txt


EXPOSE 8080


CMD ["gunicorn", "--bind", "0.0.0.0:8080", "main:app"]
