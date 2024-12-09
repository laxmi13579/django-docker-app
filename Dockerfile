FROM python:3.10-bookworm

# WORKDIR  /app

# COPY requirements.txt requirements.txt
# RUN pip install  -r requirements.txt
# # RUN pip install --no-cache-dir -r requirements.txt

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

