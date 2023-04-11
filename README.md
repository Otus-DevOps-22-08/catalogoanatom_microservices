# catalogoanatom_microservices
catalogoanatom microservices repository
## Технология контейнеризации.
### Введение в Docker
![This is an image](https://www.docker.com/wp-content/uploads/2021/09/Moby-run.png)

### docker-2
- Разобрался с установкой docker
- Разобрался с управлением docker в окружении docker-machine
- Освоил написание Dockerfile
- Завел акаунт на  dockerhub и  запушил туда контейнер
- Сделал первое задание со *, вторе некогда
- Освоил форматирование README :)

#### Проблемы
docker-machine не создается, если на удаленном хосте отсутствует каталог /etc/docker
Обнаружилось:
```
docker-machine  --debug create  --driver generic --generic-ip-address=158.160.40.213  --generic-ssh-user yc-user  --generic-ssh-key ~/.ssh/ubuntu  docker-host

...
----END CERTIFICATE-----
' | sudo tee /etc/docker/ca.pem
SSH cmd err, output: exit status 1: -----BEGIN CERTIFICATE-----
...
-----END CERTIFICATE-----
tee: /etc/docker/ca.pem: No such file or directory
```
### docker-3

### docker-4

#### Проблемы
docker-compose  утстереет в июне 2023. Версия V2  идет как plugin к docker и запускается
doker compose

Не получалось подлять mongo. Вылечилось  docker system prune -a, с ребилдом всех контейнеров.


=======

### logging-1
Создаем docker-machine ,  с использованием driver от YANDEX
```
sudo add-apt-repository ppa:longsleep/golang-backports
sudo apt update
sudo apt install golang-go
```

```
go get -u github.com/yandex-cloud/docker-machine-driver-yandex
```



```
 docker-machine create \
 --driver yandex \
 --yandex-image-family "ubuntu-1804-lts" \
 --yandex-platform-id "standard-v1" \
 --yandex-folder-id $FOLDER_ID \
 --yandex-sa-key-file $SA_KEY_PATH \
 --yandex-memory "4" \
 logging
```



export USER_NAME=catalogoanatom
cd ./src/ui && bash docker_build.sh && docker push $USER_NAME/ui
cd ../post-py && bash docker_build.sh && docker push $USER_NAME/post
cd ../comment && bash docker_build.sh && docker push $USER_NAME/comment


#### Проблемы
Новая версия установки  Go модуля:
```
go install   github.com/yandex-cloud/docker-machine-driver-yandex@latest
```


### kubernetes-2
- Разобрался с локальной установкой Kubernetes, kubectl, minikube
- Разобрался с развертывением Kebernetes в YandexCloud
- Для запуска dashboard в minikube
```bash minikube dashboard --url```



