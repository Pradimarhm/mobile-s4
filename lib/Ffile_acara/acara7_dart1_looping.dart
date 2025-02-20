void main() {
  //while looping 1 : looping angka 1-9 bentuk sederhana
  var flag = 1;
  while (flag < 10) {
    print("iterasi ke" + flag.toString());
    flag++; // Mengubah nilai flag dengan menambahkan 1
  }

  print("");

  //while looping 2 : mengembalikan angka total
  var deret = 5;
  var jumlah = 0;
  while (deret > 0) {
    // Loop akan terus berjalan selama nilai deret masih di atas 0
    jumlah += deret; // Menambahkan nilai variable jumlah dengan angka deret
    deret--; // Mengubah nilai deret dengan mengurangi 1
    print('Jumlah saat ini: ' + jumlah.toString());
  }
  print(jumlah);

  print("");

  //for looping 1 angka 1-9 sederhana
  for (var angka = 1; angka < 10; angka++) {
    print('Iterasi ke-' + angka.toString());
  }

  print("");

  //for looping 2 looping mengembalikan angka total
  var jumlah2 = 0;
  for (var deret = 5; deret > 0; deret--) {
    jumlah2 += deret;
    print('Jumlah saat ini: ' + jumlah2.toString());
  }
  print('Jumlah terakhir: ' + jumlah2.toString());

  print("");

  //for looping 3 looping dengan increment dan decrement leebih dari 1
  for (var deret = 0; deret < 10; deret += 2) {
    print('Iterasi dengan Increment counter 2: ' + deret.toString());
  }
  print('-------------------------------');
  for (var deret = 15; deret > 0; deret -= 3) {
    print('Iterasi dengan Decrement counter : ' + deret.toString());
  }
}
