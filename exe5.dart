import 'dart:io';
class NombreNegatifException implements Exception{
  @override
  String toString() => "Le nombre ne peut pas être négatif.";
}
void main () {
  print ("Entrez un nombre:");
  try{
    String? input = stdin.readLineSync();
    int value = int.parse(input!);
    if (value < 0) {
      throw NombreNegatifException();
    }
    print("Le carré du nombre est: ${value * value}");
  }catch (e) {
    print("Erreur : $e");
  }finally {
    print("Fin du programme.");
  }
}