import 'dart:io';
void verifierMotDePasse(String mp) {
  if (mp.length < 6) {
    throw FormatException('Le mot de passe doit contenir au moins 6 caractères.');
  }
}
void main (){
  print ('Veuillez entrer votre mot de passe:');
  String? mp = stdin.readLineSync();
  try {
    verifierMotDePasse(mp!);
    print('Mot de passe valide.');
  } on FormatException catch (e) {
    print('Erreur: ${e.message}');
  } finally {
    print("Fin de la vérification du mot de passe.");
  }
}