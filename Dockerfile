FROM python:3.12-slim-bookworm
LABEL authors="Igor Lytkin"

ENV PYTHONUNBUFFERED 1          # to prevent buffering stdout/stderr
ENV PYTHONDONTWRITEBYTECODE 1   # to prevent python from writing bytecode

WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r ./requirements.txt
RUN chmod 755 .

COPY . /app

CMD ["python", "-m", "main"]