import 'dart:io';
void main() {
  print("*====Tanggalan====*");
  print("masukan hari= ");
  int? hari = int.tryParse(stdin.readLineSync() ?? "");

  print("masukan bulan= ");
  int? bulan = int.tryParse(stdin.readLineSync() ?? "");

  print("masukan tahun= ");
  int? tahun = int.tryParse(stdin.readLineSync() ?? "");

  switch (bulan) {
    case 1:
      {
        print("$hari Januari $tahun");
        break;
      }
    case 2:
      {
        print("$hari Februari $tahun");
        break;
      }
    case 3:
      {
        print("$hari Maret $tahun");
        break;
      }
    case 4:
      {
        print("$hari April $tahun");
        break;
      }
    case 5:
      {
        print("$hari Mei $tahun");
        break;
      }
    case 6:
      {
        print("$hari Juni $tahun");
        break;
      }
    case 7:
      {
        print("$hari Juli $tahun");
        break;
      }
    case 8:
      {
        print("$hari Agustus $tahun");
        break;
      }
    case 9:
      {
        print("$hari September $tahun");
        break;
      }
    case 10:
      {
        print("$hari Novembber $tahun");
        break;
      }
    case 11:
      {
        print("$hari Oktober $tahun");
        break;
      }
    case 12:
      {
        print("$hari Desember $tahun");
        break;
      }
    default:
      {
        print("tanggal tidak valid");
      }
  }
}
