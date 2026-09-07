# TP Consolidation Linux — Exercices corrigés + Notes de référence

## Notes de référence (à garder sous la main)

### `>` vs `>>` (redirection)
| Symbole | Effet |
|---|---|
| `>` | **Écrase** le contenu du fichier (ou le crée s'il n'existe pas) |
| `>>` | **Ajoute** à la fin du fichier (ou le crée s'il n'existe pas) |

```bash
echo "ligne 1" > fichier.txt    # fichier.txt contient : ligne 1
echo "ligne 2" > fichier.txt    # fichier.txt contient : ligne 2 (ligne 1 est perdue !)
echo "ligne 3" >> fichier.txt   # fichier.txt contient : ligne 2 / ligne 3
```
**Piège classique :** utiliser `>` par erreur au lieu de `>>` et effacer sans le vouloir tout le contenu précédent.

---

### `rm -r` vs `rmdir`
| Commande | Effet |
|---|---|
| `rmdir dossier/` | Supprime le dossier **uniquement s'il est vide**. Sécurité intégrée. |
| `rm -r dossier/` | Supprime le dossier **et tout son contenu**, même s'il n'est pas vide. Pas de confirmation, pas de corbeille. |

**Pourquoi `rmdir` refuse un dossier non-vide :** c'est volontaire, pas un bug. C'est un garde-fou pour éviter de supprimer accidentellement des données en pensant supprimer "juste un dossier vide". Si `rmdir` acceptait tout, une seule commande mal tapée pourrait effacer des fichiers importants sans avertissement. `rm -r` existe pour les cas où tu sais réellement ce que tu fais et veux tout supprimer d'un coup — d'où son usage bien plus dangereux (pas de retour en arrière possible).

**Règle pratique :** utilise `rmdir` par défaut pour nettoyer des dossiers vides ; réserve `rm -r` aux suppressions volontaires et vérifiées (vérifie toujours avec `ls` avant).

---

### `find -type d` vs `find -type f`
| Option | Résultat |
|---|---|
| `find . -type d` | Liste uniquement les **dossiers** |
| `find . -type f` | Liste uniquement les **fichiers** |

Utile en pratique : nettoyer des dossiers vides (`find . -type d -empty`), ou chercher uniquement des fichiers de config (`find . -type f -name "*.conf"`).

---

### Substitution de commande `$(...)`
```bash
echo $(whoami) > qui-suis-je.txt
```
Bash exécute `whoami` d'abord, récupère son résultat (ton nom d'utilisateur), puis l'insère dans la commande `echo`. C'est la base de l'automatisation en bash : on capture le résultat d'une commande pour l'utiliser dans une autre.

---

### Chemins relatifs — compter les `../`
Chaque `../` remonte d'**exactement un niveau**. Pour naviguer entre deux dossiers, compte précisément la profondeur au lieu de deviner :
```
projects/cloud/aws/junior/begin  →  projects/linux/user/deleteuser
```
Depuis `begin`, remonter à `projects` demande 4 niveaux (`begin→junior→aws→cloud→projects`), donc :
```bash
cd ../../../../linux/user/deleteuser
```

---

## Exercice 1 — Arborescence et navigation

**Énoncé :** créer une arborescence de dossiers et naviguer avec des chemins relatifs.

**Corrigé :**
```bash
mkdir -p projet/{documents,images,scripts,archives}
tree projet
cd projet/documents
cd ..                    # retour à projet/
cd documents
cd ../archives           # va direct de documents/ à archives/ sans repasser par projet/
```

---

## Exercice 2 — Fichiers et contenu

**Énoncé :** créer des fichiers, écrire dedans, afficher leur contenu.

**Corrigé :**
```bash
touch documents/rapport1.txt documents/rapport2.txt documents/notes.txt documents/todo.txt documents/brouillon.txt

echo "Première phrase du rapport" > documents/rapport1.txt

echo "ligne A" >> documents/notes.txt
echo "ligne B" >> documents/notes.txt
echo "ligne C" >> documents/notes.txt

cat documents/notes.txt          # affiche tout
tail -n 2 documents/notes.txt    # affiche les 2 dernières lignes

nano documents/todo.txt          # écrire 3 tâches, Ctrl+O pour sauvegarder, Ctrl+X pour quitter
```

---

## Exercice 3 — Recherche

**Énoncé :** utiliser `find` et `whereis`.

**Corrigé :**
```bash
find . -name "*.txt"          # tous les fichiers .txt, récursivement
find documents -type f        # uniquement les fichiers dans documents/
find . -type d                # uniquement les dossiers
whereis nano                  # localise le binaire nano
echo $(whoami) > qui-suis-je.txt
```

---

## Exercice 4 — Copier, déplacer, nettoyer

**Énoncé :** manipuler des fichiers avec `cp`, `mv`, `rm`, `rmdir`.

**Corrigé :**
```bash
cp documents/rapport1.txt archives/
mv archives/rapport1.txt archives/rapport1-backup.txt

mv documents/brouillon.txt scripts/

rm documents/rapport2.txt

mkdir images_test
rmdir images_test             # fonctionne : dossier vide

mkdir images_test2
touch images_test2/photo.jpg
rmdir images_test2            # ÉCHOUE : "Directory not empty" (comportement voulu, sécurité)
rm -r images_test2            # fonctionne : supprime tout, même non-vide
```

---

## Exercice 5 — Git

**Énoncé :** versionner le travail et le pousser sur GitHub.

**Corrigé :**
```bash
git status              # voir les fichiers non trackés/modifiés
git add .                # ajouter tout ce qui est nouveau/modifié
git commit -m "TP consolidation: navigation, fichiers, find, arborescence"
git push                 # envoyer vers GitHub
git log --oneline        # voir l'historique condensé des commits
```

**Rappel important :** toujours faire `git status` avant `git add .`, pour vérifier qu'aucun fichier sensible (clé SSH, mot de passe, `.env`) n'est sur le point d'être ajouté par erreur.
