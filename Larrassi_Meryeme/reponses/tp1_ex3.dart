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