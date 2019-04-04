FROM python:3.7-alpine

WORKDIR /

RUN apk add zlib-dev && \
    apk add jpeg-dev && \
    apk add gcc && \
    apk add musl-dev && \
    pip install django && \
    pip install Pillow

CMD ["python", "-V"]