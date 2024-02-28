docker image build . --tag=my_app_28_02:v1 
создание образа

docker run -d -p 6060:6060 --env MY_ENV=bliat 2446c2ff6962
запуск контейнера на основе образа "2446c2ff6962" и проброс порта на "6060"

Запросы

доступ к продуктам
http://127.0.0.1:6060/api/v1/productsss/
POST запрос
{
  "title":"",
  "description":""
}

curl localhost -X POST localhost:6060/api/v1/productsss/ -H 'Content-Type: application/json' -d '{"title":"appl", "description":"Taskent"}'


доступ к складам
http://127.0.0.1:6060/api/v1/stocks/
POST запрос
{
    "address":"",
    "positions":[
        {
            "product":id продукта,
            "quantity":количество на складе,
            "price":цена
        }
    ]
}



