FROM python:3.10-slim

WORKDIR /app
COPY ./requirements.txt /app
COPY ./ /app

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8088
CMD ["/bin/bash", "start_service.sh"]
