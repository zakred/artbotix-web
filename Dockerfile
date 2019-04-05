FROM python:3.7-alpine

WORKDIR /

RUN apk add zlib-dev jpeg-dev gcc musl-dev && \
    pip install Pillow && \
    pip install django && \
    
    # Requirements for uwsgi
    apk add python3-dev build-base linux-headers pcre-dev && \
    pip install uwsgi

CMD ["python", "-V"]