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