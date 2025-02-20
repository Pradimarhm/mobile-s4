import 'dart:io';

void main() {
  print("masukan nama= ");
  String? nama = stdin.readLineSync();

  print("Peran");
  print("1. Penyihir");
  print("1. Guard");
  print("1. Werewolf");
  print("Masukkan Peran= ");
  String? peran = stdin.readLineSync();

  if (nama == null || nama.isEmpty) {
    print("Nama harus diisi!");
    return;
  } else{
    if (peran == null || peran.isEmpty) {
      print("Halo $nama, Pilih peranmu untuk memulai game!");
      return;
    }else{
      if (peran.toLowerCase() == "penyihir") {
        print("Halo Penyihir $nama, kamu dapat melihat siapa yang menjadi werewolf!");
      } else if (peran.toLowerCase() == "guard") {
        print("Halo Guard $nama, kamu akan membantu melindungi temanmu dari serangan werewolf.");
      } else if (peran.toLowerCase() == "werewolf") {
        print("Halo Werewolf $nama, Kamu akan memakan mangsa setiap malam!");
      } else {
        print("Peran yang kamu masukkan tidak dikenal!");
      }
    }
  }

  // if (nama == null || nama.isEmpty) {
  //   print("nama= ");
  // } else {
  //   // print("Masukkan Peran: ");
  //   // String? peran = stdin.readLineSync();
  //   print("namamu= $nama");
  //   if (peran == null || peran.isEmpty) {
  //     print("peran=");
  //   } else {
  //     print("Peran= $peran");
  //   }
  // }
}
