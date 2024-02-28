FROM python:3.10-alpine
RUN apk add --no-cache gcc musl-dev linux-headers
ENV PYTHONUNBUFFERED 1

WORKDIR .

COPY ./requirements.txt .
RUN pip3 install --no-cache-dir --upgrade -r requirements.txt

ENV MY_ENV=stocks_products

COPY . .
RUN python manage.py migrate
EXPOSE 6060
CMD ["python3", "manage.py", "runserver", "0.0.0.0:6060"]
