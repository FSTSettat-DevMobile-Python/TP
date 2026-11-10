# Série de TD/TP n°1 — Notions préalables à la programmation asynchrone

**Université Hassan I — Faculté des Sciences et Techniques de Settat**
Département Physique Appliquée — Laboratoire LAVETE
**Enseignant :** Pr. Abdelfattah Abassi (Maître de Conférences)
**Filière :** Master Sciences et Techniques — **Année universitaire :** 2026–2027
**Durée :** 2 heures (TD : 40 min · TP : 70 min · Rendu : 10 min)

---

## Identification de l'étudiant

| Champ | À remplir |
|---|---|
| Nom et prénom | |
| Groupe / Binôme | |
| Date | |
| Lien de mon dépôt GitHub | |

> **Mode d'emploi.** Remplacez chaque ligne `... votre réponse ...` par votre réponse.
> Pour le code, écrivez-le entre les balises ` ```dart ` et ` ``` `.
> Pour les sorties du programme, collez le texte exact obtenu dans le terminal.
> Ne modifiez pas les numéros des questions.

---

# Partie 1 — TD (40 minutes)

## Exercice 1 — Synchrone, asynchrone, bloquant (10 min)

### Q1.1 — Rapide ou lente ?

| Opération | Rapide / Lente |
|---|---|
| Addition de deux entiers | |
| Lecture d'un fichier local | |
| Appel à une API sur Internet | |
| Mesure d'un capteur Bluetooth | |
| Saisie d'un texte par l'utilisateur | |
| Tri d'une liste de 10 nombres | |

### Q1.2 — Synchrone ou asynchrone ? (justifier en une phrase)

| Situation | Synchrone / Asynchrone | Justification |
|---|---|---|
| (a) Rester devant la machine à laver jusqu'à la fin du cycle | | |
| (b) Lancer la machine, ranger la cuisine, revenir quand elle sonne | | |
| (c) Attendre au guichet que la personne devant vous soit servie | | |
| (d) Envoyer un message et continuer à travailler en attendant la réponse | | |

### Q1.3 — Images perdues

Durée d'une image à 60 images/s : ... ms

Nombre d'images perdues pendant 200 ms : ...

Calcul :

```
... votre calcul ...
```

### Q1.4 — Définitions

- **Bloquant :** ... votre réponse ...
- **Non bloquant :** ... votre réponse ...
- **Concurrence :** ... votre réponse ...
- **Parallélisme :** ... votre réponse ...

---

## Exercice 2 — Les fonctions sont des valeurs (15 min)

### Q2.1 — Types fonction

| Expression | Type fonction |
|---|---|
| `(String s) => s.length` | |
| `() => print('ok')` | |
| `(int a, int b) => a > b` | |

### Q2.2 — Syntaxe flèche

Version flèche de `triple` :

```dart
// ... votre code ...
```

Peut-on utiliser la flèche avec deux instructions ? Pourquoi ?

... votre réponse ...

### Q2.3 — Sortie du programme

```
... sortie exacte (une valeur par ligne) ...
```

### Q2.4 — `f` et `f()`

- `f` représente : ... votre réponse ...
- `f()` représente : ... votre réponse ...

### Q2.5 — Paramètres nommés

Paramètre nommé dans `connecter('exemple.com', port: 443)` : ...

Signature demandée (`port` vaut 80 par défaut, `securise` obligatoire) :

```dart
// ... votre signature ...
```

---

## Exercice 3 — Callbacks et événements (15 min)

### Q3.1 — Ordre d'affichage avec `Timer`

Sortie (dans l'ordre) :

```
... votre réponse ...
```

Justification :

... votre réponse ...

### Q3.2 — Classe `Bouton`

Sortie :

```
... votre réponse ...
```

- Événement : ...
- Écouteurs : ...
- Abonnement : ...

### Q3.3 — Callbacks imbriqués

... votre réponse en 3 ou 4 phrases ...

---

# Partie 2 — TP (70 minutes)

> Un fichier `.dart` par TP dans le dossier `serie1-asynchrone/` : `tp1.dart`, `tp2.dart`, `tp3.dart`, `tp4.dart`, `tp5.dart`.
> Collez ici le **code** et la **sortie obtenue**.

## TP1 — Mesurer l'attente (10 min)

### T1.1 — Code (`tp1.dart`)

```dart
// ... votre code ...
```

Sortie obtenue :

```
... collez la sortie ...
```

### T1.2 — Durée obtenue

Durée mesurée : ... ms. Est-ce exactement 3000 ms ? Pourquoi ?

... votre réponse ...

### T1.3 — Le programme peut-il faire autre chose pendant les pauses ?

... votre réponse (et le mot du cours qui décrit ce comportement) ...

---

## TP2 — Fonctions anonymes et fonctions d'ordre supérieur (15 min)

### T2.1 — Fonction « triple »

```dart
// ... votre code ...
```

### T2.2 — `appliquer` avec le carré puis le double

```dart
// ... votre code ...
```

Sortie obtenue :

```
... collez la sortie ...
```

### T2.3 — `repeter`

```dart
// ... votre code ...
```

Sortie obtenue :

```
... collez la sortie ...
```

### T2.4 — Défi : `multiplierPar`

```dart
// ... votre code ...
```

Sortie obtenue :

```
... collez la sortie ...
```

---

## TP3 — Paramètres nommés (10 min)

### T3.1 — `saluer`

```dart
// ... votre code ...
```

Sortie obtenue :

```
... collez la sortie ...
```

### T3.2 — `presenter`

```dart
// ... votre code ...
```

Sortie obtenue :

```
... collez la sortie ...
```

Message du compilateur lorsque `nom` est omis :

```
... collez le message d'erreur ...
```

---

## TP4 — Callbacks avec `Timer` (15 min)

### T4.1 — « Bonjour » après 2 secondes

```dart
// ... votre code ...
```

Ordre d'affichage observé :

```
... collez la sortie ...
```

### T4.2 — `telecharger`

```dart
// ... votre code ...
```

Sortie obtenue :

```
... collez la sortie ...
```

### T4.3 — Pyramide de callbacks

```dart
// ... votre code ...
```

- Durée totale observée : ... secondes
- Défaut de lisibilité constaté : ... votre réponse ...

---

## TP5 — Événements et écouteurs (20 min)

### T5.1 — `Bouton` avec `desabonner`

```dart
// ... votre code ...
```

Sortie obtenue (montrant que l'écouteur désabonné n'est plus appelé) :

```
... collez la sortie ...
```

### T5.2 — Classe `Thermometre`

```dart
// ... votre code ...
```

### T5.3 — Deux écouteurs et quatre mesures

```dart
// ... votre code ...
```

Sortie obtenue :

```
... collez la sortie ...
```

### T5.4 — Pour aller plus loin (facultatif) : `Timer.periodic`

```dart
// ... votre code ...
```

Lien avec la notion de `Stream` :

... votre réponse ...

---

# Rendu sur GitHub

## Checklist avant l'envoi

- [ ] Mon nom, mon groupe et le lien de mon dépôt sont renseignés en haut de ce fichier
- [ ] Toutes les questions du TD ont une réponse
- [ ] Les cinq fichiers `tp1.dart` à `tp5.dart` s'exécutent sans erreur (`dart run tpX.dart`)
- [ ] Les sorties des programmes sont collées dans ce fichier
- [ ] J'ai relu mes réponses

## Structure attendue du dépôt

```
dart-flutter-votrenom/
└── serie1-asynchrone/
    ├── reponses_serie1.md
    ├── tp1.dart
    ├── tp2.dart
    ├── tp3.dart
    ├── tp4.dart
    └── tp5.dart
```

## Commandes Git

Première fois (dépôt à créer sur github.com, puis dans le terminal) :

```bash
git init
git remote add origin https://github.com/VOTRE-COMPTE/dart-flutter-votrenom.git
git add serie1-asynchrone/
git commit -m "Serie 1 : notions prealables asynchrone"
git branch -M main
git push -u origin main
```

Dépôt déjà existant :

```bash
git add serie1-asynchrone/
git commit -m "Serie 1 : notions prealables asynchrone"
git push origin main
```

> Vérifiez sur github.com que `reponses_serie1.md` s'affiche correctement, puis transmettez le lien du dépôt à l'enseignant.

---

*Pr. Abdelfattah Abassi — Département Physique Appliquée, Laboratoire LAVETE — FST Settat, Université Hassan I*
