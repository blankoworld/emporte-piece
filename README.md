# Présentation

L'idée d'emporte-pièce : remplacer des chaînes de caractère dans un fichier par des valeurs contenues dans un fichier.

# Comment ça marche ?

On prend un fichier de base : **template/index.html**.

Qui contient des chaînes comme `${surname}` qu'on souhaite remplacer.

On remplit le fichier .env de la sorte : 

```bash
surname=olivier
```

On lance le script à l'aide de la commande suivante : `./compile.sh`.

Cela va générer le fichier **public/resultat.html** qui contient le contenu de **template/index.html** dont on a remplacé les chaînes `${surname}` par le contenu du fichier **.env**.
