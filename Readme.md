Dockerisation

La première phase du projet consistait à créer les Dockerfiles pour chaque composant de l'application ainsi qu'un Docker Compose pour orchestrer le lancement. La dockerisation du back-end s'est avérée complexe en raison de la nécessité d'organiser les appels API via les containers, ce qui impliquait de ne pas utiliser localhost.

Déploiements automatiques

Nous avons ensuite entrepris l'aventure 1, qui consistait à mettre en place des déploiements automatiques de mises à jour d'images Docker. Nous avons utilisé GitHub Actions pour automatiser le processus de construction et de déploiement des images Docker, et Watchtower pour surveiller les mises à jour des images et déclencher les déploiements.

Résultats

L'expérience a été très instructive et enrichissante. Malgré la complexité initiale de la dockerisation du back-end, nous avons réussi à mettre en place une architecture robuste et fonctionnelle. L'utilisation de GitHub Actions s'est révélée beaucoup plus simple que prévue, ce qui a facilité la mise en place des déploiements automatiques.

VOIR Aventure_1_watchtower.png POUR LE DIAGRAMME

Conclusion

Ce projet nous a permis d'acquérir des compétences précieuses en dockerisation d'applications, gestion de déploiements automatiques et utilisation d'outils comme GitHub Actions et Watchtower. Nous avons également appris à surmonter des défis techniques et à travailler en équipe pour atteindre nos objectifs. En conclusion, cette expérience a été extrêmement bénéfique et nous laisse avec une meilleure compréhension des technologies impliquées et de leurs applications pratiques.