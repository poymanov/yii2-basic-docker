# Yii2 Basic Docker

Приложение Yii2 Basic, запускаемое через Docker

## Установка

Установить **docker** и **docker-compose**

Выполнить:
```
make init
```

Приложение доступно по адресу - [http://localhost:8080](http://localhost:8080)

## Основные команды

Запуск приложения:
```
make up
```

Остановка приложения:
```
make down
```

Перезагрузка приложения:
```
make restart
```

Запуск приложения в консольном режиме (для выполнения команд yii):
```
make app-run
```