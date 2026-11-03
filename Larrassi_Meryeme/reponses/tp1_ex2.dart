void main() {
    const double tauxTVA=0.20 ;
    double prixHT=250;
    double montantTVA=prixHT*tauxTVA;
    double prixTTC=prixHT+montantTVA;
    print('HT : ${prixHT.toStringAsFixed(2)} DH');
    print('TVA : ${montantTVA.toStringAsFixed(2)} DH');
    print('TTC : ${prixTTC.toStringAsFixed(2)} DH');
}