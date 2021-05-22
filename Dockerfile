FROM tiangolo/uvicorn-gunicorn:python3.6-alpine3.8

# Make directories suited to your application
RUN mkdir -p /ML-API-master/app
WORKDIR /ML-API-master/app

# Copy and install requirements
COPY requirements.txt /ML-API-master
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8501

# Copy contents from your local to your docker container
COPY . /ML-API-master/app
