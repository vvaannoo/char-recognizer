FROM tensorflow/tensorflow:1.13.2-gpu

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

EXPOSE 8008

COPY data/models/model-1557393970.7916455.h5 data/model.h5

COPY src src

CMD ["python3", "-m", "src.controller"]