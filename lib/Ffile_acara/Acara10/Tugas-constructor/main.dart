import 'dart:io';
import 'employe.dart';

void main() {
  stdout.write("Masukkan ID Karyawan: ");
  int id = int.parse(stdin.readLineSync()!);

  stdout.write("Masukkan Nama Karyawan: ");
  String name = stdin.readLineSync()!;

  stdout.write("Masukkan Departemen Karyawan: ");
  String departemen = stdin.readLineSync()!;

  Employe employe = Employe(id, name, departemen);

  print("\nData Karyawan");
  employe.displayInfo();
}
