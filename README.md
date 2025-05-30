# ems-deploy
Despliegue de la herramienta EMS

# Ejemplo de despliegue en Ubuntu

> [!CAUTION]
> Versión en desarrollo, actualmente presenta algunos problemas de conexión con el contenedor de la bdd.

## Instalar requisitos
### Actualiza el repositorio de `apt`
```shell
sudo apt update -y
```

### Instala `docker` + `docker-compose`+ `git`
```shell
sudo apt install docker.io docker-compose git
```

### Para usar `docker` sin `sudo`
```shell
sudo usermod -aG docker $USER && newgrp docker
```

## Clonar el repositorio con la configuración de despliegue
```shell
git clone https://github.com/ChusVazquez/ems-deploy.git
```

### Acceder al directorio
```shell
cd ems-deploy
```

### Editar `ejemplo.env` con los valores deseados y renombrarlo a `.env`
```shell
mv ejemplo.env .env
```

### "Levantar" el conjunto de contendores
```shell
docker-compose up --build
```
