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

### Kubernetes-1
Основная сложность была в настройке k8s кластера.
Все мои изыски были проведены локально на libvirt https://github.com/catalogoanatom/k8s, потом воспроизведены в YC.
