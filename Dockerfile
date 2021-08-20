# syntax=docker/dockerfile:1
FROM python:3
ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY . /code/

RUN mkdir /config
ADD config /config/

EXPOSE 80

CMD ["sh", "/config/on-container-start.sh"]
