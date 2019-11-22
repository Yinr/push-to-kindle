FROM python:latest

LABEL maintainer=Yinr<yinr@yinr.cc>

WORKDIR /app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

ENV UPLOAD_FOLDER="/tmp/push-to-kindle"

ENV PRODUCTION_HOST="http://127.0.0.1:80"
ENV APP_NAME="push-to-kindle"
ENV FLASK_APP=manager.py
ENV FLASK_ENV=production
ENV FLASK_DEBUG=0
ENV MG_EMAIL_SUBJECT="convert"
ENV MG_EMAIL_TEXT="Documents have been pushed to your kindle."

EXPOSE 80

CMD [ "sh", "-c", "uwsgi uwsgi-docker.ini" ]

COPY . .
