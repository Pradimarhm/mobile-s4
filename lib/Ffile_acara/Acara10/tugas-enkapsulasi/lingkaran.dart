import 'dart:math';
class Lingkaran {
  double _radius = 0; // Properti private (enkapsulasi)

  // Setter dengan validasi agar radius tetap positif
  set radius(double value) {
    if (value < 0) {
      _radius = value * -1; // Ubah ke positif jika negatif
    } else {
      _radius = value;
    }
  }

  // Getter untuk mengambil nilai radius
  double get radius => _radius;

  // Getter untuk menghitung luas lingkaran
  double get luas => pi * _radius * _radius;
}