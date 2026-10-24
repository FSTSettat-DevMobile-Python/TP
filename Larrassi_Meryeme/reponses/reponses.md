# Série N°1 :
---

## 📝 Partie A -- TD (Papier / Réponses écrites) — *40 min*

### Exercice 1 : Prédire les résultats (*10 min*)
*Donnez le résultat affiché par chaque instruction (écrivez `erreur` si le code est refusé).*

| N° | Instruction(s) | Votre réponse |
| :---: | :--- | :--- |
| **1** | `print(10 / 4);` | 2.5 | 
| **2** | `print(10 ~/ 4);` | 2 |
| **3** | `print(10 % 4);` | 2 |
| **4** | `print('Dart' + ' ' + 'MST');` | Dart MST |
| **5** | `print('2' + '3');` | 23 |
| **6** | `print(2 + 3 * 4 - 1);` | 13 |
| **7** | `int x = 5; x += 3; x *= 2; print(x);` | 16 |
| **8** | `print(5 > 3 && 2 > 4);` | false |
| **9** | `print(!(5 == 5) \|\| 3 < 4);` | true |
| **10**| `String? s; print(s ?? 'vide');` | vide |

---

### Exercice 2 : Quel type pour quelle valeur ? (*7 min*)
*Indiquez le type Dart le plus adapté (`int`, `double`, `String`, `bool`) pour chaque valeur ou expression.*

| Valeur / Expression | Votre réponse | Valeur / Expression | Votre réponse |
| :--- | :--- | :--- | :--- |
| `42` | int | `'42'` | String |
| `3.14` | double | `10 / 2` | double |
| `true` | bool | `10 ~/ 2` | int |
| `"Settat"` | String | `7 > 3` | bool |

---

### Exercice 3 : Chasse aux erreurs (*8 min*)
*Le programme suivant contient **6 erreurs**. Repérez-les, indiquez la ligne, le type d'erreur (syntaxe, type, logique) et la correction.*

```dart
1: void main() {
2:   int age = 'vingt';
3:   double prix = 12,5;
4:   String nom = 'Sara";
5:   const tva = 0.2
6:   tva = 0.25;
7:   print('Age : ' + age);
8: }
```

#### Vos réponses :

| Ligne | Type d'erreur | Problème identifié | Correction proposée |
| :---: | :--- | :--- | :--- |
| **2** | Type | 'vingt' est du texte, pas un entier | `int age = 20;` |
| **3** | Syntaxe | virgule au lieu du point décimal| double prix = 12.5;|
| **4** | Syntaxe | quotes différentes ' et "| String nom = 'Sara'; |
| **5** | Syntaxe | point-virgule manquant | const tva = 0.2; |
| **6** | Logique | on ne peut pas modifier une const | supprimer la ligne tva = 0.25;|
| **7** | Type | on relie un texte et un nombre avec + | print('Age : ' + age.toString()); |

---

### Exercice 4 : Conditions (*15 min*)

#### a) Trace de code
*Donnez le résultat des appels suivants selon la fonction ci-dessous :*

```dart
String mention(double m) {
  if (m >= 16) {
    return 'Très bien';
  } else if (m >= 14) {
    return 'Bien';
  } else if (m >= 12) {
    return 'Assez bien';
  } else if (m >= 10) {
    return 'Passable';
  } else {
    return 'Insuffisant';
  }
}
```

| Appel | `mention(17)` | `mention(13.99)` | `mention(10)` | `mention(9.5)` |
| :--- | :---: | :---: | :---: | :---: |
| **Résultat** | Très bien | Assez bien | Passable | Insuffisant |

#### b) Expressions booléennes
*Écrivez en Dart la condition qui vaut `true` lorsque :*

1. `a` est compris entre 10 et 20 (bornes incluses) :
```dart
a >= 10 && a <= 20
```

2. `n` est un entier **pair et strictement positif** :
```dart
n > 0 && n % 2 == 0
```

3. `annee` est une année **bissextile** (divisible par 4 mais pas par 100, ou divisible par 400) :
```dart
(annee % 4 == 0 && annee % 100 != 0) || (annee % 400 == 0)
```

#### c) Réécriture
*Réécrivez la structure `if/else` suivante avec l'opérateur ternaire :*

```dart
String statut;
if (age >= 18) {
  statut = 'majeur';
} else {
  statut = 'mineur';
}
```

**Votre réécriture :**
```dart
String statut = (age >= 18) ? 'majeur' : 'mineur';
```
