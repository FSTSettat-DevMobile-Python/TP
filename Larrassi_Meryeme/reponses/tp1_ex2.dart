// TP2 - Calcul d'une facture
// Calcule le prix TTC à partir d'un prix HT et d'une TVA fixée en constante.
void main() {
    const double tauxTVA=0.20 ;
    double prixHT=250;
    double montantTVA=prixHT*tauxTVA;
    double prixTTC=prixHT+montantTVA;
    print('HT : ${prixHT.toStringAsFixed(2)} DH');
    print('TVA : ${montantTVA.toStringAsFixed(2)} DH');
    print('TTC : ${prixTTC.toStringAsFixed(2)} DH');
}
