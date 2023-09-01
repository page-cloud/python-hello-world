# Use Ubuntu as the base image
FROM ubuntu:20.04
RUN apt-get update && \
    apt-get install -y python3 python3-pip
WORKDIR /app
COPY requirements.txt .
RUN pip3 install -r requirements.txt
COPY app.py .
EXPOSE 80
CMD ["python3", "app.py"]

