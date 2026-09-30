FROM python:3.9.25-alpine3.22

ENV LANG=C.UTF-8
ENV PYTHONUNBUFFERED=1

WORKDIR /app

RUN python -m pip install --no-cache-dir \
    paho-mqtt==1.6.1 \
    influxdb==5.3.2

COPY main.py /app/main.py
COPY run.sh /app/run.sh

RUN chmod +x /app/run.sh

CMD ["/app/run.sh"]
