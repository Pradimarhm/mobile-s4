import 'bangun_datar.dart';

class Segitiga extends BangunDatar {
  double alas, tinggi, sisiA, sisiB;
  Segitiga(this.alas, this.tinggi, this.sisiA, this.sisiB);

  @override
  double luas() => 0.5 * alas * tinggi;

  @override
  double keliling() => sisiA + sisiB * tinggi;
}
