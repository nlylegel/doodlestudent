ChatGPT 3.5
User
dans un docker compose je lance un server my sql et un service quarkus

je veuc que mon service quarkus se lance apres l'etape suivante (de mysql)

api-db-1        | 2024-02-07T23:31:37.645654Z 0 [System] [MY-015018] [Server] MySQL Server Initialization - end.
ChatGPT

Pour configurer votre service Quarkus pour qu'il démarre après que MySQL soit prêt, vous pouvez utiliser un script de démarrage personnalisé dans votre conteneur Quarkus. Ce script peut attendre que MySQL soit prêt avant de démarrer le service Quarkus. Voici comment vous pouvez le faire :

    Créez un fichier start.sh dans votre répertoire Quarkus avec le contenu suivant :

bash

#!/bin/bash

# Attendre que MySQL soit prêt
while ! mysqladmin ping -hmysql_host -u tlc -p tlc --silent; do
    echo "MySQL n'est pas encore prêt - en attente..."
    sleep 1
done

# Démarrer votre service Quarkus
exec java -jar quarkus-app.jar