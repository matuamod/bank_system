FROM python:3.9-alpine

ENV PYTHONUNBUFFERED 1

WORKDIR /app

COPY . /app

RUN apk add bash \
    && apk add --no-cache --virtual .pynacl_deps build-base python3-dev libffi-dev

RUN pip install --upgrade pip setuptools \
    && pip install wheel \
    && pip install cffi --no-binary :all: \
    && pip install -r requirements.txt

EXPOSE 8000

RUN chmod +x django.sh

ENTRYPOINT bash django.sh