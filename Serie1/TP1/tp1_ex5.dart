import 'dart:io';

void main() {
  stdout.write('entrer le nombre entier de secondes n :');
  int n = int.parse(stdin.readLineSync()!);

  int heures = n ~/ 3600;
  int minutes = (n % 3600) ~/ 60;
  int secondes = n % 3600;

  //print('$n S = $heures h $minutes min $secondes s');

  String resultat = '';
  if (heures > 0) {
    resultat += '$heures ${heures == 1 ? 'heure' : 'heures'} ';
  }

  if (minutes > 0) {
    resultat += '$minutes ${minutes == 1 ? 'minute' : 'minutes'} ';
  }

  if (secondes > 0 || n == 0) {
    resultat += '$secondes ${secondes == 1 ? 'seconde' : 'secondes'}';
  }

  print('$n s = ${resultat.trim()}');
}
