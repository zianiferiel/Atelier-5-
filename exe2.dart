import 'dart:io';
void main (){
print ('Entrez votre âge:');
String? input = stdin.readLineSync();
try {
  int age = int.parse(input!);
  print('Vous avez $age ans.');
} on FormatException {
  print('Erreur: Veuillez entrer un nombre valide pour l\'âge.');
}
finally {
    print("Fin d'opération");
}
}