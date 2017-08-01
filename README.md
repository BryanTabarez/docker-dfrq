# docker-dfrq

Repositorio con las configuraciones de contenedores para la aplicación QuiUV. Se utiliza docker-compose
para generar tres contenedores: base de datos, contenedor de la aplicación y servidor proxy.
![alt text](https://user-images.githubusercontent.com/9521285/28298981-17984804-6b3c-11e7-8a9d-b5c46238fa22.png "Diagrama de despliegue")

* Instalar docker-compose [https://docs.docker.com/compose/install/](https://docs.docker.com/compose/install/)

* Clonar el repositorio de la aplicación en la carpeta **dfrq** desde 
[https://github.com/BryanTabarez/dfrq](https://github.com/BryanTabarez/dfrq)

* Construir contenedores de la aplicación `docker-compose build`

* Correr las instancias con `docker-compose up`
