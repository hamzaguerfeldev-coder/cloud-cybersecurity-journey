# Notes — Jour 2 : Permissions, chown, Processus

## Conversion symbolique ↔ octale

Chaque fichier ou dossier a un ensemble de droits divisés en 3 catégories d'utilisateurs : **user (u)**, **group (g)**, **other (o)**. Chaque fichier commence par `-` et chaque dossier par `d`. Chaque catégorie a 3 droits possibles : lecture, écriture, exécution.

Exemple : `-rwxrwxrwx` = fichier avec tous les droits pour tout le monde. `drwxrwxrwx` = dossier avec tous les droits pour tout le monde. Si on trouve un `-` à la place d'une lettre, ça veut dire que ce droit n'est pas accordé à cette catégorie.

Exemple : `rwx` = peut lire, écrire, et exécuter (ou entrer/modifier si c'est un dossier). `r--` = peut seulement lire, ni écrire ni exécuter.

Cette façon de noter les droits (avec les lettres r/w/x et les tirets) s'appelle la **notation symbolique**.

Il existe aussi la **notation octale**, basée sur des valeurs numériques :
- r = 4
- w = 2
- x = 1

On additionne les valeurs des droits présents dans chaque bloc de 3 pour obtenir un chiffre par catégorie.

**Exemples :**
- `rwx` → 4+2+1 = **7**
- `rwxrwxrwx` → 421 421 421 → **777**
- `rw-rwx---` → 420 421 000 → **670**
- `rwxr-xr--` → 421 401 400 → **754**

Pour changer les droits avec `chmod`, on peut utiliser soit la notation symbolique (`chmod u-x fichier` — modifie une partie, relatif) soit la notation octale (`chmod 755 fichier` — fixe tout d'un coup, absolu).

## chown / chgrp

`chown` change le propriétaire et/ou le groupe d'un fichier :
```bash
chown user fichier            # change juste le propriétaire
chown user:group fichier      # change les deux
chown :group fichier          # change juste le groupe
```

`chgrp` fait la même chose que `chown :group` mais de façon dédiée et plus explicite :
```bash
chgrp group fichier
```

## Processus

- `ps aux | grep motclé` → trouver un processus par son nom
- `kill PID` → arrêter un processus proprement
- `top` → observer les processus en temps réel, `q` pour quitter sans rien tuer
- `&` à la fin d'une commande → lance le processus en arrière-plan
