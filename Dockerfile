FROM python:3.9

# تنظیم متغیر محیطی برای جلوگیری از بافر کردن خروجی‌ها
ENV PYTHONUNBUFFERED 1

# ایجاد و تعیین دایرکتوری کاری در کانتینر
WORKDIR /code

# کپی کردن فایل‌های پروژه به کانتینر
COPY . /code/

# نصب وابستگی‌ها
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
