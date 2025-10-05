
FROM python:3.9

WORKDIR /app

COPY rf_model.joblib .
COPY app.py .

RUN pip install flask scikit-learn joblib numpy

EXPOSE 5000

CMD ["python", "app.py"]
