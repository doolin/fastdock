FROM python:3.12-slim

WORKDIR /app
COPY ./requirements.txt /app
# Attemoting to mount the local directory to the container
# such that local changes will be reflected in the container.
# It does not work as expected, and it's getting punted for now.
# COPY ./ /app

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8088
CMD ["/bin/bash", "start_service.sh"]
