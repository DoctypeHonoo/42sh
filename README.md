<p align="center">
  <img src="https://user-images.githubusercontent.com/91092610/174607609-04840452-37f3-4edb-b2eb-05be4715e40e.png" />
</p>
<h1 align="center">
   42sh
</h1>

---

## Motivation : 

Le **42sh** est un projet d'Epitech se déroulant en fin d'année. Il est le dernier projet d'une série de 3 grands projets sur le thème de la programmation de Terminal (Shell Programming). Il suit le Minishell1 et le Minishell2, qui furent les étapes précédentes de la création d'un terminal complet.

---

## Description :

Le **42sh** à pour but de reprogrammer un terminal de commande en prenant le terminal TCSH comme exemple.
Ces caractéristiques doivent être les suivantes : 
- Créer les fonctions *where*, *repeat*, *if*, *which*, *foreach* et *alias*
- Avoir un système de variable
- Gérer les && et les ||
- Gérer les parenthèses "()", ainsi que les globbings "*", "?", "[]"
- Conserver les commandes précèdement exécutées dans un historique
- Avoir un système d'auto-completion
- Gérer les guillemets
- Et bien évidemment, avoir toute les caractéristiques demandé lors du Minishell2

Le 42sh doit être une reproduction de TCSH quasiment identique afin de valider le projet à 100%.

---

## Fonctions Autorisées : 

- All functions included in the libC or the ncurses library

---

## Installer & Lancer le Projet :

Ouvrez un terminal et dirigez vous ou vous souhaitez que le projet soit installé, puis exécutez les commandes suivantes : 
```bash
$ git clone git@github.com:EpitechPromo2026/B-PSU-210-MPL-2-1-42sh-romain.very.git
$ cd B-PSU-210-MPL-2-1-42sh-romain.very
$ make
```
Le binaire se trouvera alors à la racine du projet, et il vous suffira de le lancer comme ceci : 
```bash
$ ./42sh
```
<p align="center">
  <img src="https://user-images.githubusercontent.com/91092610/174632028-6e1fda10-d7cb-45e9-8c58-7c2d207b5091.png">
</p>

---

## Comment l'utiliser ? : 

Le terminal **42sh** s'utilise comme tout autre terminal, il vous est possible d'utiliser n'importe quel binaire interne, tel que *ls*, *cat*, *grep*, et bien d'autre, mais aussi les fonctions builtins, tel que *cd*, *setenv*, *unsetenv* et *env*. Notre **42sh** possède aussi le *repeat*, les *alias*, les *if*, ainsi que le *where*. Un système de variable a aussi été implémenté, et est fonctionnel. Pour finir notre **42sh** dispose aussi des séparateurs ";", des redirections ">", "<", ">>", et "<<", les pipes "|" et enfin, les "&&" et les "||".

Les fonctionnalités manquantes sont, certaines fonctions système comme *foreach* et *which*, les globbings et les parenthèses.

Pour finir, notre **42sh** dispose d'une partie "musique", avec plusieurs commande tel que *play*, *pause*, *song* qui vont permettre de jouer de la musique dans un terminal tout en continuant à l'utiliser.

<p align="center">
  <img src="https://user-images.githubusercontent.com/91092610/174324680-877675c7-df21-46e5-bc8a-01379c644ab8.png">
</p>
