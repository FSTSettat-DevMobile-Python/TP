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
