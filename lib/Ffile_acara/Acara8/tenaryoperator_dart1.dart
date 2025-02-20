import 'dart:io';

void main() {
  print("jawab iya atau tidak");
  print("apakah anda akan instal dart: ");
  String? jawaban = stdin.readLineSync();
  // var instalApkDart = jawaban;
  String instalApkDart = (jawaban?.toLowerCase() == "iya")
      ? "anda akan menginstal aplikasi dart"
      : "aborted";
  print(instalApkDart);
  
}
