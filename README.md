
# WGforge2019
## WebServices

### Установка и настройка
* Устанавливаем [docker-compose](https://docs.docker.com/compose/install/)
* Или через pip `~$ pip install docker-compose`

#### Добавляем домены в hosts
* Для Linux и Mac, добавляем в файл /etc/hosts, строку в конец файла \
\
`sudo echo '127.0.0.1 wgf2019.local disk.wgf2019.local wiki.wgf2019.local' >> /etc/hosts`
* Для Windows, открываем в блокноте файл c:\windows\system32\drivers\etc\hosts и прописывам в конце файла строчки:
```
127.0.0.1 wgf2019.local
127.0.0.1 disk.wgf2019.local
127.0.0.1 wiki.wgf2019.local
```

#### Запуск контейнеров.
Клонируем репозиторий и переходим в каталог с репозиторием.
```
git clone https://github.com/roman-kozin/wgforge2019_webservices.git
~$ cd wgforge2019_webservices/
~$ docker-compose up -d
```
