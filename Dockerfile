# Dockerfile - this is a comment. Delete me if you want.
FROM python:3.7-alpine

ADD . /app

WORKDIR /app

RUN apk --update --upgrade add --no-cache  gcc musl-dev jpeg-dev zlib-dev libffi-dev cairo-dev pango-dev gdk-pixbuf-dev

RUN python -m pip install --upgrade pip
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
EXPOSE 5000
COPY . .
CMD [ "python", "app.py" ]