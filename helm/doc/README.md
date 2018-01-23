# Utilisation de helm

On utilise helm pour générer les manifests nécessaires à l'installation.

Installer helm selon les instructions pour votre système d'exploitation.

On assume que 

- vous allez cloner le dépôt au complet
- les commandes helm sont lancées dans le dossier heml
- vous avez des connaissances sur k8s.


### Pour générer les fichiers de secrets

- créer un fichier "secrets-values.yml" avec les valeurs:	
> namespace: siad-moodlececl-prod-01
>
> dbhost: 'test'
>
> dbname: 'test'
>
> dbpassword: 'test'
>
> dbusername: 'test'

- lancer

```
helm template cecl -x templates/sec-templates.yml -f [path_to_file]secrets-values.yml
```

### Pour générer les restants manifests

Modifier le fichiers values.yaml dans le dossier cecl avec les valeurs souhaitées.


Lancer:

```
helm template cecl
```

ne pas tenir compte du secrets généré dans ce pas.