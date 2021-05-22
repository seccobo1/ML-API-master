FROM python:3.7

# Make directories suited to your application
RUN mkdir -p /ML-API-master/app
WORKDIR /ML-API-master/app

# Copy and install requirements
COPY requirements.txt /ML-API-master/app
RUN pip3 install -r requirements.txt

EXPOSE 80

# Copy contents from your local to your docker container
COPY . /ML-API-master/app

WORKDIR /ML-API-master/app/app

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
