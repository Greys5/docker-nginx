###Integración de flujo para hacer build y push de imagen Docker de Nginx

        - Al hacer cambios en el index default. Tomado de > (https://github.com/nginx/nginx/blob/master/docs/html/index.html)


-1- Hacer git clone del repo:

        > https://github.com/Greys5/docker-apps.git

-2- Crear Token en DockerHub y en Github para hacer la integración >

        * En la cuenta de Docker Hub ir a:
        
                        Settings > Security > New Acces Token
                        
        Nombrarlo de forma descriptiva para GithubActions y copiar el token generado, ir a la cuenta de GitHub, y
        situados en el repositorio, vamos a:
        
                        Settings > Secrets > Actions > New Repository Secret  
                        
        Nombrar el secret como DOCKER_HUB_ACCESS_TOKEN y pegamos el token que nos dio Docker Hub, creamos otro secret que será DOCKER_HUB_USERNAME en el cuál ponemos nuestro username de Docker Hub.

-3- En el editor de código, nos aseguramos de estar trabajando sobre la branch main, se podría comprobar desde nuestra terminal con el comando:

        > git checkout
        
        > git checkout main
        
        Al verificar, realizar un cambio al archivo index.html> /docker-nginx/index.html

-4- Una vez modificado y guardado el cambio del archivo, ejecutar en la terminal:

        > git add -p
        
        Aprobar con "y" los cambios hechos en el index.
        
        > git commit -m "(commit-name)" 
        
        > git push

-5- Luego del push con los cambios, ir al repo de GitHub y seleccionar Actions, se puede visualizar la ejecución del workflow y chequear el proceso de cada uno de los steps que corre.

-6- Al finalizar el workflow, podemos comprobar la publicación de la imagen actualizada en la cuenta de Docker Hub en Repositories, seleccionando el nombre del repositorio indicado en el job.


**Para terminar podemos comprobar los cambios de la imagen en local ejecutando en la terminal:

        > docker run username/repositoriesName:tagname
        
        - En este caso: docker run gfs5/challenge:latest
        Una vez la imagen esté levantada, vamos al navegador
        
                > https://localhost:80
        

