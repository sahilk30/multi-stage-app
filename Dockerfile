#Stage 1
FROM python:3.9 AS big

WORKDIR /app

COPY . .

#Stage 2
FROM python:3.9-slim-bullseye

COPY --from=big /app /app	

RUN pip install flask 

CMD ["python","app.py"]
