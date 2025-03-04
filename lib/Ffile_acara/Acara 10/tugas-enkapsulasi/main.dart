import 'lingkaran.dart';
void main(){
  Lingkaran lingkaran = Lingkaran();

  lingkaran.radius = -7; // Mengisi radius negatif, akan dikonversi ke positif
  print("Radius: ${lingkaran.radius}"); // Output: Radius: 7.0
  print("Luas Lingkaran: ${lingkaran.luas}"); // Output: Luas Lingkaran: 153.93804002589985
}