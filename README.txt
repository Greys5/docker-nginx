Integración de flujo para hacer build y push de imagen de Nginx,
al hacer cambios en el index default. Tomado de > (https://github.com/nginx/nginx/blob/master/docs/html/index.html)


-1- Hacer git clone del repo > https://github.com/Greys5/docker-apps.git

-2- Crear Token en DockerHub y en Github para hacer la integración >
        En la cuenta de Docker Hub ir a:
                        Settings > Security > New Acces Token
        Nombrarlo de forma descriptiva para GithubActions y copiar el token generado, ir a nuestra cuenta de githuh,
        situados en el repositorio, vamos a:
                        Settings > Secrets > Actions > New Repository Secret  
        Nombramos el secret como DOCKER_HUB_ACCESS_TOKEN y pegamos el token que nos dio Docker Hub
        Creamos otro secret que será DOCKER_HUB_USERNAME en el cuál ponemos nuestro username de Docker Hub

-3- En nuestro editor de código, nos aseguramos de estar trabajando sobre la branch main, comprobando desde nuestra terminal con:
        > git checkout
        o > git checkout main
        Al verificar realizar un cambio al archivo index.html> /docker-app/nginx-app/index.html

-4- Una vez modificado y guardado el cambio del archivo, ejecutaremos en nuestra terminal:
        > git add -p
        Aprobamos con "y" los cambios hechos en el index
        > git commit -m "(commit-name)" 
        > git push

-5- Luego del push con los cambios, vamos al repo de GitHub y seleccionamos Actions,
podemos ver la ejecución del workflow y chequear el proceso de cada uno de los steps que corre

-6- Al finalizar el workflow, vamos a nuestro repositorio de Docker Hub y comprobamos que la imagen se ha actualizado
y publicado correctamente. 


**Para terminar podemos comprobar los cambios de nuestra imagen en local ejecutando en la terminal:
        > docker run username/repositoriesName:tagname
        en este caso: docker run gfs5/challenge:nginx
        Una vez la imagen esté levantada, vamos al navegador > https://localhost:80
        

