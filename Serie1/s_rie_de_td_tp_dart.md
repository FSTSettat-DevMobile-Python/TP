# Série N°1 : Premiers pas, types et conditions

> **Durée TD :** 40 min | **Durée TP :** 80 min  
> **Chapitre couvert :** Sections 1 à 3 (Premiers pas, variables et types, opérateurs et conditions)  
> **Outils :** DartPad ([dartpad.dev](https://dartpad.dev)) pour le TD ; Dart SDK + VS Code (`dart run`) pour le TP.

---

## 🎯 Objectifs
À la fin de cette série, vous saurez :
- Écrire et exécuter un programme Dart.
- Choisir le bon **type** de donnée.
- Utiliser les **opérateurs**.
- Lire une saisie clavier et prendre des décisions avec `if`, `switch` et l'opérateur ternaire.

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
| **3** | Syntaxe| virgule au lieu du point décimal | `double prix = 12.5;` |
| **4** | Syntaxe | quotes différentes ' et " | `String nom = 'Sara';` |
| **5** | Syntaxe | point-virgule manquant | `const tva = 0.2;` |
| **6** | Logique | on ne peut pas modifier une const | supprimer la ligne `tva = 0.25;` |
| **7** | Type | on relie un texte et un nombre avec + | `print('Age : ' + age.toString());` |

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

---

## 💻 Partie B -- TP (Sur machine) — *80 min*

> 💡 **Consigne :** Créez un dossier `tp1` et enregistrez chaque exercice dans un fichier séparé (`tp1_ex1.dart`, etc.). Exécution : `dart run tp1_ex1.dart`.  
> *Note : Les exercices TP3 à TP5 utilisent `stdin` (non compatibles avec DartPad).*

---

### TP 1 : Environnement et premier programme (*10 min*)

1. **Version installée :**
   ```bash
  Dart SDK version: 3.13.5 (stable) (Tue Sep 29 01:00:52 2026 -0700) on "windows_x64"
   ```

2. **Code de la carte de visite (`tp1_ex1.dart`) :**
```dart
// TP1 - Carte de visite
// Affiche nom, filière et ville avec des variables et l'interpolation de chaînes.
void main() {
    String nom= 'Larrassi Meryeme' ;
    String filiere='Master Sicrat';
    String ville='Settat';
    print('Nom : $nom');
    print('Filiere : $filiere');
    print('Ville : $ville');
}
```

3. **Remarque sur l'erreur de syntaxe testée :**
   * J’ai enlevé le point-virgule à la fin d’une ligne pour voir. Dart m’a affiché Expected ';' after this. en me donnant la ligne du problème. Le programme n’a pas marché, et dès que j’ai remis le ;, ça a refonctionné.

---

### TP 2 : Calcul d'une facture (*15 min*)

- **Code source (`tp1_ex2.dart`) :**
```dart
// TP2 - Calcul d'une facture
// Calcule le prix TTC à partir d'un prix HT et d'une TVA fixée en constante.
void main() {
    const double tauxTVA=0.20 ;
    double prixHT=250;
    double montantTVA=prixHT*tauxTVA;
    double prixTTC=prixHT+montantTVA;
    print('HT : ${prixHT.toStringAsFixed(2)} DH');
    print('TVA : ${montantTVA.toStringAsFixed(2)} DH');
    print('TTC : ${prixTTC.toStringAsFixed(2)} DH');
}
```

- **Question :** Pourquoi utiliser `const` plutôt que `var` pour la TVA ?
  > **Réponse :** On met const parce que la TVA ne change pas. C’est toujours 20%. Avec const, on est sûr que la valeur reste la même et qu’on ne la modifie pas sans faire exprès. Avec var on pourrait la changer, mais ça ne sert à rien ici.

---

### TP 3 : Moyenne et mention (*15 min*)

- **Code source (`tp1_ex3.dart`) :**
```dart
// // TP3 - Moyenne et mention
// Lit un nom et deux notes au clavier, calcule la moyenne et affiche la mention.
import 'dart:io';
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
void main(){
    stdout.write('Nom : ');
     String nom = stdin.readLineSync() ?? '';
    stdout.write('Note1 : ');
    double? note1 = double.tryParse(stdin.readLineSync()??'');
    stdout.write('Note2 : ');
    double? note2 = double.tryParse(stdin.readLineSync()??'');
if (note1 == null || note2 == null){
     print('Erreur : saisie invalide.');
     return;
}
    double moyenne = (note1+note2)/2;
    print('$nom : ${moyenne.toStringAsFixed(2)} (${mention(moyenne)})');
    }
```

---

### TP 4 : Calculatrice à deux opérandes (*20 min*)

- **Code source (`tp1_ex4.dart`) :**
```dart
// TP4 - Calculatrice à deux opérandes
// Lit deux nombres et un opérateur, puis affiche le résultat avec un switch.
import 'dart:io';

void main() {
  stdout.write('Premier nombre : ');
  double? a = double.tryParse(stdin.readLineSync() ?? '');
  stdout.write('Deuxième nombre : ');
  double? b = double.tryParse(stdin.readLineSync() ?? '');
  stdout.write('Opérateur (+, -, *, /) : ');
  String op = stdin.readLineSync() ?? '';

  if (a == null || b == null) {
    print('Erreur : nombres invalides.');
    return;
  }

  switch (op) {
    case '+':
      print('Résultat : ${a + b}');
      break;
    case '-':
      print('Résultat : ${a - b}');
      break;
    case '*':
      print('Résultat : ${a * b}');
      break;
    case '/':
      if (b == 0) {
        print('Erreur : division par zéro impossible.');
      } else {
        print('Résultat : ${a / b}');
      }
      break;
    default:
      print('Erreur : opérateur inconnu.');
  }
}
```

- **Bonus : Année bissextile (`tp1_ex4_bonus.dart`) :**
```dart
// TP4 Bonus - Année bissextile
// Lit une année et indique si elle est bissextile.
import 'dart:io';
bool estBissextile(int annee) {
  return (annee % 4 == 0 && annee % 100 != 0) || (annee % 400 == 0);
}
void main() {
  stdout.write('Entrez une année : ');
  int? annee = int.tryParse(stdin.readLineSync() ?? '');
  if (annee == null) {
    print('Erreur : année invalide.');
    return;
  }
  if (estBissextile(annee)) {
    print('$annee est bissextile.');
  } else {
    print("$annee n'est pas bissextile.");
  }
}
```

---

### TP 5 : Conversion d'une durée (*20 min*)

- **Code source (`tp1_ex5.dart`) :**
```dart
// TP5 - Conversion d'une durée
// Convertit un nombre de secondes en heures, minutes et secondes.
// Utilise la division entière (~/) et le reste (%).
import 'dart:io';
void main() {
  stdout.write('Nombre de secondes : ');
  int? total = int.tryParse(stdin.readLineSync() ?? '');
  if (total == null || total < 0) {
    print('Erreur : entrez un entier positif.');
    return;
  }
  int heures = total ~/ 3600;
  int minutes = (total % 3600) ~/ 60;
  int secondes = total % 60;
  print('$total s = $heures h $minutes min $secondes s');
}
```

- **Défi (Gestion des pluriels et unités nulles) :**
```dart
// TP5 Défi - Conversion avec pluriel et sans unités nulles
// Affiche seulement les unités non nulles et gère le pluriel des heures.
import 'dart:io';
void main() {
  stdout.write('Nombre de secondes : ');
  int? total = int.tryParse(stdin.readLineSync() ?? '');

  if (total == null || total < 0) {
    print('Erreur : entrez un entier positif.');
    return;
  }
  int heures = total ~/ 3600;
  int minutes = (total % 3600) ~/ 60;
  int secondes = total % 60;
  List<String> morceaux = [];
  if (heures > 0) {
    morceaux.add('$heures ' + (heures > 1 ? 'heures' : 'heure'));
  }
  if (minutes > 0) {
    morceaux.add('$minutes min');
  }
  if (secondes > 0) {
    morceaux.add('$secondes s');
  }
  if (morceaux.isEmpty) {
    morceaux.add('0 s');
  }
  print('$total s = ${morceaux.join(' ')}');
}
```

---

## 📦 Livrable
Cochez les éléments à remettre :
- [ ] Le présent fichier Markdown complété
- [ ] Les 5 fichiers `.dart` dans le dossier `tp1`
- [ ] Une capture d'écran d'exécution du **TP3**
