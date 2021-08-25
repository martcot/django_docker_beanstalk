# syntax=docker/dockerfile:1
FROM python:3
ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY code /code/
RUN pip install -r requirements.txt

RUN mkdir config
ADD config /config/

EXPOSE 80

CMD ["sh", "/config/app/on-container-start.sh"]