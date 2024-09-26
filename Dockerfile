FROM --platform=$BUILDPLATFORM python:3.10-alpine AS builder

COPY . /app
WORKDIR /app

RUN pip install -r requirements.txt

ENTRYPOINT [ "python3" ]
CMD [ "hello.py" ]
