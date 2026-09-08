# Fiche de référence — Permissions, chown, Processus

## Structure d'une ligne `ls -l`

```
-rwxr-xr--  1 hamza  hamza  120 sept 8 21:00  script.sh
```

| Position | Signification |
|---|---|
| 1er caractère | type : `-` fichier, `d` dossier, `l` lien symbolique |
| caractères 2-4 | droits du **user** (propriétaire) |
| caractères 5-7 | droits du **group** |
| caractères 8-10 | droits des **other** |

## rwx — sens selon fichier ou dossier

| Droit | Sur un fichier | Sur un dossier |
|---|---|---|
| r | lire le contenu | lister le contenu (`ls`) |
| w | modifier | créer/supprimer des fichiers dedans |
| x | exécuter | entrer dedans (`cd`) |

## chmod — changer les permissions

**Symbolique** (modifie une partie, relatif) :
```bash
chmod u+x fichier      # ajoute l'exécution au propriétaire
chmod g-w fichier      # retire l'écriture au groupe
chmod o=r fichier      # fixe "other" à lecture seule uniquement
chmod a+r fichier      # a = all (les 3 catégories d'un coup)
```

**Octale** (fixe tout d'un coup, absolu) :
```bash
chmod 755 fichier
```
| Octal | Signification |
|---|---|
| 7 | rwx |
| 6 | rw- |
| 5 | r-x |
| 4 | r-- |
| 3 | -wx |
| 2 | -w- |
| 1 | --x |
| 0 | --- |

## chown — changer propriétaire / groupe

```bash
chown user fichier            # change le propriétaire
chown user:group fichier      # change propriétaire ET groupe
chown :group fichier          # change juste le groupe
chown -R user:group dossier/  # applique récursivement à tout un dossier
```

## Commandes utilisateurs/groupes utiles (pour comprendre chown)

```bash
sudo useradd nomUtilisateur     # créer un utilisateur
sudo userdel nomUtilisateur     # supprimer un utilisateur
sudo groupadd nomGroupe         # créer un groupe
sudo groupdel nomGroupe         # supprimer un groupe
groups nomUtilisateur           # voir les groupes d'un utilisateur
```

## Processus

| Commande | Rôle |
|---|---|
| `ps aux` | liste tous les processus en cours |
| `ps aux \| grep motclé` | filtre les processus par nom |
| `top` | moniteur de processus en temps réel |
| `htop` | version améliorée de `top` (si installé) |
| `kill PID` | arrête un processus proprement (signal par défaut : SIGTERM) |
| `kill -9 PID` | arrêt forcé (signal SIGKILL, dernier recours) |
| `&` (à la fin d'une commande) | lance la commande en arrière-plan |
| `q` | touche pour quitter `top` sans rien tuer |

## Conversion symbolique ↔ octale

| Lettre | Valeur |
|---|---|
| r | 4 |
| w | 2 |
| x | 1 |
| - | 0 |

Additionner par bloc de 3 (user / group / other) pour obtenir le chiffre octal.

Exemple : `rwxr-xr--` → user: 4+2+1=**7**, group: 4+0+1=**5**, other: 4+0+0=**4** → **754**
