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
