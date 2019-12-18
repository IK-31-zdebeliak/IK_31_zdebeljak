1. У папці з лабораторною створюю папки my_app та tests, в які копіюю відповідні файли з репозиторію,ознайомлююсь з їх вмістом. Пееглядаю файл requirements.txt. Він містить залежності додатку.
2. Виконую команди для перевірки працездатності проекту:
   
       pipenv --python 3.7
       pipenv install -r requirements.txt
       pipenv run python app.py
3. Під час запуску сервера виникає помилка: redis.exceptions.ConnectionError: Error -2 connecting to redis:6379. Name or service not known. Для вирішення проблеми встановлюю redis server за допомогою команд:
   
       sudo apt-get install redis-server
4. Роблю зміни у etc/hosts, для того, щоб перенаправити запити на адресу 127.0.0.1 redis.
5. Після цього запускаю сервер і переконуюсь, що програма працює.
