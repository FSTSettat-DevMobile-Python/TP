void main() {
  const double TVA = 0.20;
  double Prix_HT = 250.0;
  double TVA_1;
  double Prix_TTC;
  TVA_1 = TVA * Prix_HT;
  Prix_TTC = TVA_1 + Prix_HT;

  print('Prix HT   :   ${Prix_HT.toStringAsFixed(2)} DH');

  print('TVA (20%) :   ${TVA_1.toStringAsFixed(2)} DH');

  print('Prix_TTC  :   ${Prix_TTC.toStringAsFixed(2)} DH');
}
