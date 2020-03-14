Commentaires généraux:

Le README.md, c'est pour la documentation (à quel problème répond l'app, comment la lancer, etc.)
  -> Possible de se faire un fichier perso (NOTES.md par exemple) pour prendre des notes - à mettre dans le gitignore
Mettre .vscode dans le .gitignore car tous les développeurs n'utilisent pas VSCode
  -> le .gitignore, c'est pour exclure de git les fichiers qui ne font pas partie de la codebase - ex: fichiers de config des développeurs
Pour info, le code est public sur Github, n'importe qui peut le télécharger (pas un problème vu que c'est de l'entrainement là ;)

IMPORTANT: Toujours bien respecter l'indentation en ruby (il faut prendre les bonnes habitudes dès le début)
  -> 2 espaces pour chaque niveau d'indentation.
  -> Chaque ouverture de bloc augmente l'indentation d'un niveau
  -> Chaque fermeture de bloc diminue l'indentation d'un niveau
  -> 2 guides de référence pour les règles de formatage de son code:
    https://github.com/rubocop-hq/ruby-style-guide
    https://github.com/airbnb/ruby
  -> En choisir un, le respecter religieusement (possible de l'adapter légèrement après au moins 1-2 ans de code)
  -> Je te conseille celui d'Airbnb, il est moins lourd à digérer ;)

Ne pas mettre d'images à la racine de l'app, les mettre dans /app/assets/images, éventuellement dans des sous-dossiers
Ne pas mettre de database à la racine de l'app, les mettre éventuellement dans le dossier /db - le mieux, c'est de les retirer du dossier de l'app
