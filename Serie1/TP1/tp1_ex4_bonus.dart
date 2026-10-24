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
