void main() {
  tampilkan();
  print("---");
  print(munculkanAngka());
  print("---");
  print(kalikanDua(6));
  print("---");
  print(kalikan(5, 6));
  print("---");
  tampilkanAngka(5);
  print("---");
  // print(functionPerkalian(5, 6));
}

//function tanpa retun
tampilkan() {
  print("aku kaya");
}

//function dengan return
munculkanAngka() {
  return 2;
}

//function dengan parameter
kalikanDua(angka) {
  return angka * 2;
}

//function pengiriman parameter lebih dari satu
kalikan(x, y) {
  return x * y;
}

//function inisianisasi parameter dengan nilai default
tampilkanAngka(n1, {s1 = 45}) {
  print(n1);
  print(s1);
}

// //pengiriman yang UNDEFINED
// functionPerkalian(angka1, angka2) {
//   return angka1 * angka2;
// }
