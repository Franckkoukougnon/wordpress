FROM ubuntu
RUN apt update # faire des mises a jour de la liste des packages 
RUN apt install -y nginx # telecharger nginx -y pour valider l'installation
ADD static-website-example  /var/www/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

