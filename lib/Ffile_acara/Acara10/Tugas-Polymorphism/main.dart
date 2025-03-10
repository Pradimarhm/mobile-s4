import 'persegi.dart';
import 'segitiga.dart';
import 'lingkaran.dart';
import 'dart:io';

void main() {
  stdout.write("Masukkan alas Segitiga: ");
  double alas = double.parse(stdin.readLineSync()!);
  stdout.write("Masukkan tinggi Segitiga: ");
  double tinggi = double.parse(stdin.readLineSync()!);
  stdout.write("Masukkan sisi A Segitiga: ");
  double sisiA = double.parse(stdin.readLineSync()!);
  stdout.write("Masukkan sisi b Segitiga: ");
  double sisiB = double.parse(stdin.readLineSync()!);
  Segitiga segitiga = Segitiga(alas, tinggi, sisiA, sisiB);
  print("Luas Segitiga: ${segitiga.luas()}");
  print("Keliling Segitiga: ${segitiga.keliling()}");
  print("-----------");

  stdout.write("Masukkan sisi persegi: ");
  double sisi = double.parse(stdin.readLineSync()!);
  Persegi persegi = Persegi(sisi);
  print("Luas Persegi: ${persegi.luas()}");
  print("Keliling Persegi: ${persegi.keliling()}");
  print("-----------");

  stdout.write("Masukkan Jari-jari lingkaran: ");
  double jari = double.parse(stdin.readLineSync()!);
  Lingkaran lingkaran = Lingkaran(jari);
  print("Luas Lingkaran: ${lingkaran.luas()}");
  print("Keliling Lingkaran: ${lingkaran.keliling()}");
  print("-------selesai------");
}
