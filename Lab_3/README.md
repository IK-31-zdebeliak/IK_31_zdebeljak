1. Створюю папку з назвою лабораторної роботи у власному репозиторію. У папці ініціалізовую середовище pipenv командою pipenv -python 3.7 та встановлюю необхідні пакети за допомогою команди pipenv install django.
2. За допомогою Django Framework створюю заготовку Template. pipenv run django-admin startproject my_site.
3. За допомогою команди "pipenv run python manage.py runserver" запускаю сервер, та переходжу за посиланням, що з'явилось у консолі.
4. ![2](https://github.com/IK-31-zdebeliak/IK_31_zdebeljak/blob/master/Lab_3/2.png)
5. За допомогою команди "pipenv run python manage.py startapp page" створюю темплейт додатку page.
6. Створюю папку page/templates , та створюю файли page.html та urls.py. Заповнюю їх згідно зразка та роблю коміт.
7. Вказую Django frameworks його назву та де шукати веб сторінки. Це здійснюється у файлі my_site/settings.py змінній INSTALLED_APPS, а також вношу зміни у файл my_site/url.py.
8. Змінюю вміст файла page/views.py відповідно до зразка.
9. Щоб поєднати функції із реальними URL шляхами за якими будуть доступні веб сторінки заповнюю файл page/urls.py згідно зразка.
10. Запускаю сервер і переконуюсь у тому, що сторінки, що я створив раніше відображаються корректно.
11. ![3](https://github.com/IK-31-zdebeliak/IK_31_zdebeljak/blob/master/Lab_3/3.png)
12. Встановлюю бібліотеку requests та створюю файл monitоring.py, заповнюю згідно зразка.
13. Модифікую функцію health так щоб у відповіді були: згенерована на сервері дата, URL сторінки моніторингу, інформація про сервер на якому запущений сайт та інформація про клієнта який робить запит до сервера, за допомогою функцій з імпортованих бібліотек.
14. ![4](https://github.com/IK-31-zdebeliak/IK_31_zdebeljak/blob/master/Lab_3/4.jpg)
15. Дописую функціонал, щоб виводити повідомлення про помилку, та щоб моніторинг запускався раз в хвилину.
16. Створюю аліаси для запуску сервера і моніторинга:server = "python manage.py runserver"  monitoring = "python monitoring.py"
17. Запускаю обидві команди, комічу файл server.log, до репозиторію.
