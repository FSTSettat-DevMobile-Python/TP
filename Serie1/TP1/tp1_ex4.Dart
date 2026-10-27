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
