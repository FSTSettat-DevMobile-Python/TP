# Série d'exercices : Langage Dart

**Université Hassan 1er — FST Settat**  
**Département Informatique**  
**Enseignant : Pr. Abdelfattah Abassi**  
**Année universitaire : 2026–2027**

---

## Consignes générales

- Réaliser les exercices en langage **Dart**.
- Écrire un programme distinct pour chaque exercice, sauf indication contraire.
- Tester les programmes avec plusieurs jeux de données.
- Respecter les types des variables et structurer le code avec des fonctions lorsque cela est pertinent.
- Aucun corrigé n'est fourni dans cette série.

## Exercice 1 — Variables, types et expressions

1. Déclarer les variables suivantes avec des types adaptés : le nom d'un étudiant, son âge, sa moyenne, son statut de réussite et une liste de notes.
2. Afficher leurs valeurs à l'aide d'interpolations de chaînes de caractères.
3. Calculer et afficher la moyenne de trois notes.
4. Déclarer une variable constante représentant la valeur de \(\pi\), puis calculer l'aire d'un cercle de rayon donné.
5. Expliquer la différence entre `var`, `dynamic`, `final` et `const` à l'aide de petits exemples.

## Exercice 2 — Conditions et énumérations

1. Écrire un programme qui lit une note sur 20 et affiche :
   - `Excellent` si la note est supérieure ou égale à 16 ;
   - `Bien` si elle est supérieure ou égale à 14 ;
   - `Assez bien` si elle est supérieure ou égale à 12 ;
   - `Passable` si elle est supérieure ou égale à 10 ;
   - `Insuffisant` sinon.
2. Vérifier que la note saisie est comprise entre 0 et 20.
3. Déclarer une énumération `Jour` contenant les sept jours de la semaine et afficher un message différent selon le jour.
4. Utiliser `switch` pour traiter plusieurs valeurs d'une énumération.

## Exercice 3 — Boucles et calculs

1. Afficher les entiers de 1 à 100.
2. Calculer la somme des entiers de 1 à \(n\), où \(n\) est saisi par l'utilisateur.
3. Afficher la table de multiplication d'un entier.
4. Écrire un programme qui compte le nombre de chiffres d'un entier positif.
5. Déterminer si un entier est premier.
6. Afficher tous les nombres premiers compris entre 2 et une limite \(n\).

## Exercice 4 — Fonctions et récursivité

1. Écrire une fonction `carre` qui reçoit un nombre et retourne son carré.
2. Écrire une fonction `estPair` qui indique si un entier est pair.
3. Écrire une fonction `maximum` qui retourne le plus grand de deux nombres.
4. Écrire une fonction utilisant un paramètre nommé optionnel pour personnaliser un message de bienvenue.
5. Écrire une fonction récursive qui calcule la factorielle d'un entier positif.
6. Écrire une fonction récursive qui calcule la somme des entiers de 1 à \(n\).

## Exercice 5 — Listes et opérations fonctionnelles

On considère une liste de notes d'étudiants.

1. Créer une liste contenant au moins dix notes.
2. Afficher les notes supérieures ou égales à 10 à l'aide de `where`.
3. Construire une nouvelle liste contenant les notes augmentées d'un point à l'aide de `map`.
4. Calculer la somme des notes avec `reduce`.
5. Vérifier si au moins une note est supérieure ou égale à 18 avec `any`.
6. Vérifier si toutes les notes sont comprises entre 0 et 20 avec `every`.
7. Trier et afficher les notes dans l'ordre croissant.
8. Utiliser un `Set` pour éliminer les doublons d'une collection de valeurs.
9. Créer une `Map` associant à chaque étudiant son nom et sa moyenne, puis afficher son contenu.

## Exercice 6 — Classes, objets et constructeurs

Créer une classe `Etudiant` contenant les attributs `nom`, `code` et `moyenne`.

1. Définir un constructeur permettant d'initialiser les attributs.
2. Créer trois objets de type `Etudiant`.
3. Ajouter une méthode `afficherInformations` qui affiche les informations d'un étudiant.
4. Ajouter une méthode qui indique si l'étudiant est admis (moyenne supérieure ou égale à 10).
5. Redéfinir `toString()` afin de fournir une représentation textuelle de l'objet.
6. Ajouter un getter permettant de consulter le résultat d'admission.

## Exercice 7 — Encapsulation et gestion d'un compte bancaire

Créer une classe `CompteBancaire` avec un solde et un titulaire.

1. Encapsuler le solde avec un attribut privé.
2. Ajouter un getter pour consulter le solde.
3. Écrire une méthode `deposer` qui ajoute un montant positif au solde.
4. Écrire une méthode `retirer` qui refuse un retrait supérieur au solde disponible.
5. Ajouter une méthode qui affiche les informations du compte.
6. Tester les cas normaux et les cas d'erreur.

## Exercice 8 — Héritage et polymorphisme

1. Créer une classe de base `Personne` avec un nom et un âge.
2. Créer une classe `Etudiant` qui hérite de `Personne` et ajoute un code étudiant.
3. Créer une classe `Enseignant` qui hérite de `Personne` et ajoute une spécialité.
4. Redéfinir une méthode `afficherInformations` dans les classes dérivées.
5. Construire une liste de personnes contenant des étudiants et des enseignants.
6. Parcourir cette liste et appeler la méthode redéfinie pour illustrer le polymorphisme.

## Exercice 9 — Classe abstraite et formes géométriques

Créer une classe abstraite `Forme` comportant une méthode abstraite `calculerAire`.

1. Créer les classes `Rectangle` et `Cercle` qui héritent de `Forme`.
2. Implémenter `calculerAire` dans chaque classe.
3. Créer plusieurs formes et les stocker dans une liste de type `Forme`.
4. Parcourir la liste et afficher l'aire de chaque forme.
5. Expliquer le rôle de la classe abstraite dans cet exemple.

## Exercice 10 — Mini-projet : gestionnaire de notes

Développer une application console en Dart permettant de gérer les notes des étudiants.

### Fonctionnalités demandées

1. Ajouter un étudiant avec son nom et son identifiant.
2. Ajouter plusieurs notes à un étudiant.
3. Calculer sa moyenne.
4. Afficher les informations d'un étudiant et ses notes.
5. Déterminer s'il est admis, selon une moyenne supérieure ou égale à 10/20.
6. Afficher la liste de tous les étudiants.
7. Rechercher un étudiant par son identifiant.
8. Afficher l'étudiant ayant la meilleure moyenne.
9. Vérifier la validité des notes saisies (entre 0 et 20).

### Contraintes techniques

- Utiliser une classe `Etudiant`.
- Utiliser une collection pour stocker les étudiants.
- Organiser le programme avec plusieurs méthodes.
- Gérer les saisies invalides.
- Présenter un menu textuel permettant de choisir les opérations.

## Questions de synthèse

1. Quelle est la différence entre une liste (`List`), un ensemble (`Set`) et une table associative (`Map`) ?
2. Dans quel cas utiliser une fonction qui retourne une valeur plutôt qu'une fonction `void` ?
3. Quelle est la différence entre une classe et un objet ?
4. Quel est l'intérêt de l'encapsulation ?
5. Que signifie redéfinir une méthode dans une classe dérivée ?
6. Quel est le rôle du polymorphisme ?
7. Quelle est la différence entre une classe abstraite et une classe concrète ?
8. À quoi sert la récursivité ? Citer un exemple.

---

**Fin de la série — Bon travail !**
