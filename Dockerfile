FROM ubuntu:20.04

WORKDIR /app

COPY . .

RUN apt update
RUN apt install -y python3 \
    && apt install -y python3-pip

RUN pip3 install -U pip \
    && pip3 install -r requirements.txt

CMD ["python3", "app.py"]

