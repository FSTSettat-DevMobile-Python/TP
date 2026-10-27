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