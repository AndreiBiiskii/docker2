FROM python:3.9

WORKDIR /home/andrei/Desktop/new/test_reg


ENV MY_ENV=netology_06_03


COPY . .

RUN pip3 install --upgrade -r requirements.txt

RUN python manage.py migrate

EXPOSE 7777

CMD ["python3", "manage.py", "runserver", "0.0.0.0:7474"]
