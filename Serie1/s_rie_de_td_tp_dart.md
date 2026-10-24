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
| **8** | `print(5 > 3 && 2 > 4);` | False |
| **9** | `print(!(5 == 5) \|\| 3 < 4);` | True |
| **10**| `String? s; print(s ?? 'vide');` | vide |

---

### Exercice 2 : Quel type pour quelle valeur ? (*7 min*)
*Indiquez le type Dart le plus adapté (`int`, `double`, `String`, `bool`) pour chaque valeur ou expression.*

| Valeur / Expression | Votre réponse | Valeur / Expression | Votre réponse |
| :--- | :--- | :--- | :--- |
| `42` | int | `'42'` | string |
| `3.14` | double | `10 / 2` | double |
| `true` | bool | `10 ~/ 2` | int |
| `"Settat"` | string | `7 > 3` | bool |

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
| **2** | Type | 'vingt' est un texte, pas un entier | `int age = 20;` |
| **3** | Syntaxe | en décimal, le séparateur est un point | double prix = 12.5; |
| **4** | Syntaxe | Les guillemets ne correspondent pas | String nom = 'Sara'; |
| **5** | Syntaxe | Le code doit se terminer par ';' | const tva = 0.2; |
| **6** | Logique | Une constante ne peut pas être modifiée | supprimer tva = 0.25; |
| **7** | Type | L'opérateur + ne permet pas ici de concaténer directement un String et un int | print('Age : ' $age); |

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
(annee % 4 == 0 && annee % 100 != 0) ||
    annee % 400 == 0
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
String statut = age >= 18 ? 'majeur' : 'mineur' ;
```

---

## 💻 Partie B -- TP (Sur machine) — *80 min*

> 💡 **Consigne :** Créez un dossier `tp1` et enregistrez chaque exercice dans un fichier séparé (`tp1_ex1.dart`, etc.). Exécution : `dart run tp1_ex1.dart`.  
> *Note : Les exercices TP3 à TP5 utilisent `stdin` (non compatibles avec DartPad).*

---

### TP 1 : Environnement et premier programme (*10 min*)

1. **Version installée :**
   ```bash
  Dart SDK version: 3.13.6 (stable) (Tue Oct 20 01:00:48 2026 -0700) on "windows_x64"
   ```

2. **Code de la carte de visite (`tp1_ex1.dart`) :**
```dart
void main() {
  String nom = 'Fatima-Ezzahra ZAHRAOUI';
  String filiere = 'SICRAT';
  String ville = 'Benslimane';
  print('===== CARTE DE VISITE =====');
  print('Mon nom est: $nom');
  print('Ma filière est: $filiere');
  print('Ma ville est: $ville');
}
```

3. **Remarque sur l'erreur de syntaxe testée :**
   * j'ai volontairement oubliée le point-virgule `;` à la fin de l'instruction `print`. Lors de l'exécution, le compilateur a signalé une erreur de syntaxe.Et lorsque j'ai corrigée le code en ajoutant le point-virgule manquant le programme s'est exécuté correctement.

---

### TP 2 : Calcul d'une facture (*15 min*)

- **Code source (`tp1_ex2.dart`) :**
```dart
void main() {
  const double TVA = 0.20;
  double Prix_HT = 250.0;
  double TVA_1;
  double Prix_TTC;
  TVA_1 = TVA * Prix_HT;
  Prix_TTC = TVA_1 + Prix_HT;

  print('Prix HT   :   ${Prix_HT.toStringAsFixed(2)} DH');

  print('TVA (20%) :   ${TVA_1.toStringAsFixed(2)} DH');

  print('Prix_TTC  :   ${Prix_TTC.toStringAsFixed(2)} DH');
}

```

- **Question :** Pourquoi utiliser `const` plutôt que `var` pour la TVA ?
  > **Réponse :** Parce que le taux de TVA est une valeur que l'on veut garder fixe dans ce programme. const indique que cette valeur est constante, tandis que var permettrait de réaffecter une nouvelle valeur à la variable.

---

### TP 3 : Moyenne et mention (*15 min*)

- **Code source (`tp1_ex3.dart`) :**
```dart
import 'dart:io' ;
void main(){
double moyenne ;
stdout.write('Votre Nom : ');
String? nom = stdin.readLineSync();
stdout.write('Votre Note 1 :');
double note1 = double.parse(stdin.readLineSync()!);

stdout.write('Votre Note 2 :');
double note2 = double.parse(stdin.readLineSync()!);

moyenne = (note1 + note2)/2;
String mention (double moyenne){
 if(moyenne >=16){
    return 'Très bien';
 }
 else if(moyenne >= 14){
    return 'Bien';
 }
else if(moyenne >= 12){
    return 'Assez bien';
}
else if(moyenne >= 10){
    return 'Passable';
}
else {
    return 'Insuffisant';
}
}

print('$nom : ${moyenne.toStringAsFixed(2)} (${mention(moyenne)})');

}
```

---

### TP 4 : Calculatrice à deux opérandes (*20 min*)

- **Code source (`tp1_ex4.dart`) :**
```dart
import 'dart:io';
void main(){
stdout.write('entrer a  :');
double a = double.parse(stdin.readLineSync()!);

stdout.write('entrer b  :');
double b = double.parse(stdin.readLineSync()!);

 stdout.write('Entrez un opérateur (+, -, *, /) : ');
 String operateur = stdin.readLineSync()!;

switch (operateur) {
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
      if (b != 0) {
        print('Résultat : ${a / b}');
      } else {
        print('Erreur : division par zéro impossible.');
      }
      break;
    default:
  print('Erreur : opérateur inconnu.');
  }
}

```

- **Bonus : Année bissextile (`tp1_ex4_bonus.dart`) :**
```dart
import 'dart:io';

void main() {
  stdout.write('Entrez une année : ');
  int annee = int.parse(stdin.readLineSync()!);

  if ((annee % 400 == 0) || (annee % 4 == 0 && annee % 100 != 0)) {
    print('$annee est une année bissextile.');
  } else {
    print('$annee n’est pas une année bissextile.');
  }
}

```

---

### TP 5 : Conversion d'une durée (*20 min*)

- **Code source (`tp1_ex5.dart`) :**
```dart
import 'dart:io';

void main() {
// Lire le nombre de secondes
  stdout.write('entrer le nombre entier de secondes n :');
  int n = int.parse(stdin.readLineSync()!);
  int heures = n ~/ 3600;          // Calculer les heures
  int minutes = (n % 3600) ~/ 60;  // Calculer les minutes restantes
  int secondes = n % 3600;         // Calculer les secondes restantes

  print('$n S = $heures h $minutes min $secondes s');
}

```

- **Défi (Gestion des pluriels et unités nulles) :**
```dart
void main() {
  stdout.write('entrer le nombre entier de secondes n :');
  int n = int.parse(stdin.readLineSync()!);

  int heures = n ~/ 3600;
  int minutes = (n % 3600) ~/ 60;
  int secondes = n % 3600;
  String resultat = '';
  if (heures > 0) {       // Ajouter les heures uniquement si leur nombre est supérieur à zéro
    resultat += '$heures ${heures == 1 ? 'heure' : 'heures'} ';// Choisir "heure" au singulier ou "heures" au pluriel
  }

  if (minutes > 0) {   // Ajouter les minutes uniquement si leur nombre est supérieur à zéro
 
    resultat += '$minutes ${minutes == 1 ? 'minute' : 'minutes'} '; // Choisir "minute" ou "minutes" selon la valeur
  }

  if (secondes > 0 || n == 0) {    // Ajouter les secondes si elles sont supérieures à zéro
  
    resultat += '$secondes ${secondes == 1 ? 'seconde' : 'secondes'}';// Si la durée totale vaut zéro, afficher quand même "0 secondes"
  }

  print('$n s = ${resultat.trim()}');
}

```

---

## 📦 Livrable
Cochez les éléments à remettre :
- [x] Le présent fichier Markdown complété
- [ ] Les 5 fichiers `.dart` dans le dossier `tp1`
- [ ] Une capture d'écran d'exécution du **TP3**
