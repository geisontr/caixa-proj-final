FROM python:3.10

WORKDIR /app

COPY . .

RUN pip install -r extract/requirements.txt
RUN pip install psycopg2-binary

CMD ["python", "extract/extract_pipeline.py"]
