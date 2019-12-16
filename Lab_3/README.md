1. Створюю папку з назвою лабораторної роботи у власному репозиторію. У папці ініціалізовую середовище pipenv командою pipenv -python 3.7 та встановлюю необхідні пакети за допомогою команди pipenv install django.
2. За допомогою Django Framework створюю заготовку Template. pipenv run django-admin startproject my_site.
3. За допомогою команди "pipenv run python manage.py runserver" запускаю сервер, та переходжу за посиланням, що з'явилось у консолі.
4. ![2](https://github.com/IK-31-zdebeliak/IK_31_zdebeljak/blob/master/Lab_3/2.png)
5. За допомогою команди "pipenv run python manage.py startapp page" створюю темплейт додатку page.
6. Створюю папку page/templates , та створюю файли page.html та urls.py. Заповнюю їх згідно зразка та роблю коміт.
7. Вказую Django frameworks його назву та де шукати веб сторінки. Це здійснюється у файлі my_site/settings.py змінній INSTALLED_APPS, а також вношу зміни у файл my_site/url.py.
8. Змінюю вміст файла page/views.py відповідно до зразка.
9. Щоб поєднати функції із реальними URL шляхами за якими будуть доступні веб сторінки заповнюю файл page/urls.py згідно зразка.
10. 