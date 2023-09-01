FROM python:3.10-alpine

COPY srv .
WORKDIR /srv/app/

RUN apk --no-cache add \
    bash \
    build-base \
    gcc \
    libffi-dev \
    libpq \
    musl-dev \
    python3-dev \
    postgresql-dev \
    && pip install --no-cache --upgrade pip \
    && pip install flask \
    && pip install psycopg2 --use-pep517 \
    && pip install configparser

CMD ["python", "web.py"]