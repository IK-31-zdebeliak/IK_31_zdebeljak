1. Для перевірки чи докер встановлений і працює правильно на віртуальній машині запускаю перевірку версії, виведення допомоги та тестовий імедж:
    
    docker -v
    docker -h
    docker run docker/hello world
2. Перенаправляю результати цих команд у файл my_work.log та роблю коміт до репозиторію.
3. Створюю Docker імейдж з сайтом з попередньої роботи.
4. Щоб завантажити базовий Python імейдж з репозиторію, використовую наступні команди:
   
       docker pull python:3.7-slim
       docker images
       docker inspect python:3.7-slim
5. Створюю Dockerfile.site, копіюю туди вміст файла - зразка, роблю необхідні зміни та виконую коміт до репозиторію.
6. Заходжу в свій аккаунт на Docker Hub та створюю репозиторій.
7. Виконую білд Docker імейджа та завантажую його до репозиторію, за допомогою команд:
   
       sudo docker build -t hashchenko/lab_4:django -f Dockerfile.site .
       sudo docker images
       sudo docker push hashchenko/lab_4:django
8. https://hub.docker.com/repository/docker/wildbard/lab4
9. Посилання на скачування імейджа: hashchenko/lab_4:django
10. Запускаю сервер за допомогою команди sudo docker run -it --name=latest --rm -p 8000:8000 wildbard/lab4:latest
11. ![3](https://github.com/IK-31-zdebeliak/IK_31_zdebeljak/blob/master/Lab_3/3.png)
12. ![4](https://github.com/IK-31-zdebeliak/IK_31_zdebeljak/blob/master/Lab_3/4.jpg)
13. Створю ще один файл під назвою Dockerfile.monitoring і поміщаю туди програму моніторингу. Виконую білд і присвоюю тег monitoring.
14. Запускаю два контейнери у двох вкладках терміналу та перевіряю правильність роботи програми. Для коректної роботи використовую ключ --net=host.
15. Комічу Dockerfile.monitor та результати роботи програми моніторингу, запущеної з Docker контейнера - файл server.log.
