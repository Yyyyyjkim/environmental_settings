FROM python:3.8 
FROM continuumio/miniconda3
RUN pip install jupyter matplotlib seaborn

VOLUME /app
WORKDIR /app

RUN apt-get update -y \
    && apt-get install -y wget git unzip

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip", "0.0.0.0", "--port", "8888", "--allow-root"]