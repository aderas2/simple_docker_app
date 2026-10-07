FROM python:3.12-slim

WORKDIR /opt/source-code

COPY . .

RUN pip install flask flask-mysql

ENV FLASK_APP=app.py

EXPOSE 5000

ENTRYPOINT ["flask", "run", "--host=0.0.0.0"]