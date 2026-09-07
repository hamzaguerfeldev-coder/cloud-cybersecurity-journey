# TP Consolidation — Linux Basics

## Objectif
Consolider les commandes Linux de base avant de passer aux notions plus avancées (permissions, processus, scripting). Ce TP couvre : navigation dans le système de fichiers, création/modification de fichiers, recherche, copie/déplacement/suppression, et gestion de version avec Git.

## Ce que j'ai pratiqué

**Navigation et arborescence**
Création d'une structure de dossiers avec `mkdir -p` (y compris la syntaxe avec accolades pour créer plusieurs dossiers imbriqués en une seule commande), puis navigation entre dossiers avec des chemins relatifs (`cd ..`, `cd ../../`). J'ai particulièrement travaillé la logique de comptage des niveaux `../` pour naviguer directement d'un dossier profond à un autre sans repasser par la racine.

**Fichiers et contenu**
Création de fichiers avec `touch`, écriture de contenu avec `echo` et `nano`, lecture avec `cat` et `tail`. Point clé compris : la différence entre `>` (écrase le fichier) et `>>` (ajoute à la fin) — un piège classique qui peut faire perdre du contenu par erreur.

**Recherche**
Utilisation de `find` avec `-name` pour chercher par motif de nom, et `-type f` / `-type d` pour filtrer fichiers vs dossiers. Utilisation de `whereis` pour localiser des binaires système.

**Manipulation de fichiers**
Copie (`cp`), déplacement/renommage (`mv` — Linux ne fait pas de différence entre les deux), et suppression avec la distinction importante entre `rmdir` (dossier vide uniquement, sécurité intégrée) et `rm -r` (supprime tout, y compris le contenu, sans confirmation).

**Substitution de commande**
Découverte de `$(commande)` pour injecter le résultat d'une commande dans une autre, par exemple `echo $(whoami) > fichier.txt`. C'est une base essentielle du scripting bash.

**Git**
Suivi du travail avec `git status`, `git add`, `git commit -m`, `git push`, et consultation de l'historique avec `git log --oneline`.

## Difficultés rencontrées
- Confusion initiale entre `tail 2 fichier` et `tail -n 2 fichier` (le `-n` est obligatoire pour spécifier le nombre de lignes).
- Erreur de comptage des `../` en naviguant entre deux dossiers profonds — corrigé en comptant précisément chaque niveau de l'arborescence.

## Fichiers dans ce dossier
- `tp-linux-basics-corrige.md` — énoncés, corrections et notes de référence détaillées pour chaque exercice.
- Les dossiers de test (`ansible/`, `projects/`, etc.) — résultats pratiques des commandes exécutées.

## Prochaine étape
Jour 2 : permissions (`chmod`, `chown`) et gestion des processus (`ps`, `top`, `kill`).
