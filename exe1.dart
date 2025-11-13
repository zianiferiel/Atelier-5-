void main (){
    try{
        int resultat = 12 ~/ 0;
        print('Résultat: $resultat');
    }on IntegerDivisionByZeroException{
        print('Erreur: Division par zéro.');
    }
}