FROM python:3.11-alpine

WORKDIR /app

COPY requirements.txt /app
RUN pip install --no-cache-dir -r requirements.txt

COPY . /app

EXPOSE 5000

ENTRYPOINT ["python"]
CMD ["-m" , "flask", "--app=src/myapp", "run", "--host=0.0.0.0"]
