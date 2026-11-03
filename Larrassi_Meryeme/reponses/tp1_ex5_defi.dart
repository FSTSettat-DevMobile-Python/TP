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