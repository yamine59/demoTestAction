# Image de base
FROM nginx

# copier notre projet dans l'image

# definition du repertoire de travail cote image
WORKDIR /usr/share/nginx/html


# executer des commandes
RUN apt update

RUN mkdir totodossier && touch totodossier/toto.txt

# copie des fichiers
COPY . .

# exposition de port 
EXPOSE 80

# commande pour lancer le demarrage du serveur nginx losqu'on utilise l'image pour creer un conteneur
CMD [ "nginx","-g","daemon off;" ]

# docker build -t site:v1.0 .