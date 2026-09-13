# Jour 3 — Shell Scripting — Exercices corrigés (FR)

## Script 1 — salutation.sh

**Énoncé :** demander le nom avec `read`, afficher un message de bienvenue.

**Corrigé :**
```bash
#!/bin/bash

read -p "Donnez votre nom : " nom
echo "Bonjour $nom, bienvenue dans le shell scripting !"
```

---

## Script 2 — pair-impair.sh

**Énoncé :** prendre un nombre en argument, afficher pair/impair.

**Corrigé :**
```bash
#!/bin/bash

nombre=$1
if [ $((nombre % 2)) -eq 0 ]; then
    echo "pair"
else
    echo "impair"
fi
```
Usage : `./pair-impair.sh 7` → affiche "impair"

---

## Script 3 — backup.sh

**Énoncé :** prendre un dossier en argument, créer une copie datée.

**Corrigé :**
```bash
#!/bin/bash

cp -r "$1" "${1}_$(date +"%Y-%m-%d")"
echo "Sauvegarde créée : ${1}_$(date +"%Y-%m-%d")"
```
**Point clé :** toujours mettre les variables entre guillemets (`"$1"`) pour éviter les problèmes si le nom contient des espaces.

Usage : `./backup.sh mondossier` → crée `mondossier_2026-09-08`

---

## Script 4 — compteur-fichiers.sh

**Énoncé :** boucler sur tous les `.txt`, afficher chaque nom trouvé, puis le total.

**Corrigé :**
```bash
#!/bin/bash

i=0
for fichier in *.txt; do
    echo "Fichier trouvé : $fichier"
    i=$((i+1))
done
echo "on a trouvé $i fichier(s) au format texte"
```

---

## Bonus — verif-utilisateur.sh

**Énoncé :** vérifier un argument avec if/elif/else — "admin" → accès complet, "invite" → accès limité, sinon → inconnu.

**Corrigé :**
```bash
#!/bin/bash

if [ "$1" == "admin" ]; then
    echo "Accès complet"
elif [ "$1" == "invite" ]; then
    echo "Accès limité"
else
    echo "Utilisateur inconnu"
fi
```
Usage : `./verif-utilisateur.sh admin` → "Accès complet"

---

## Erreurs classiques à retenir

1. **Variable sans guillemets** dans une commande (`cp -r $1 ...`) → risque de casse si le nom contient un espace. Toujours `"$1"`.
2. **Espace manquant** dans le message de `read -p` → texte collé à la saisie utilisateur.
3. **Boucle qui ne fait que compter** sans afficher chaque élément — bien relire l'énoncé complet avant de considérer l'exercice fini.
4. **Noms de variables non descriptifs** (`ii`, `x`, `tmp`) → préférer un nom clair (`fichier`, `compteur`) pour la lisibilité future.
