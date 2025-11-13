class MotPasseCourtException implements Exception {
  String message;
  MotPasseCourtException(this.message);
  @override
  String toString() => message;
}
void verifierMotDePasse(String motDePasse) {
  if (motDePasse.length < 8) {
    throw MotPasseCourtException("Le mot de passe doit contenir au moins 8 caractères.");
  }
}
void main() {
  try {
    verifierMotDePasse("abc");
  } catch (e) {
    print("Erreur : $e");
  }
}

