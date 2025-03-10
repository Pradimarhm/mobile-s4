import 'package:acara_bkpm/Ffile_acara/Acara10/Tugas-Polymorphism/bangun_datar.dart';

class Lingkaran extends BangunDatar {
  double jari2;

  Lingkaran(this.jari2);

  @override
  double luas() => 3.14 * jari2 * jari2;

  @override
  double keliling() => 2 * 3.14 * jari2;
}
