import 'dart:async';
import 'dart:io';

void main(List<String> args) async {
  print("ready. Sing");
  await Future.delayed(Duration(seconds: 5), () {
    line();
  });

  await Future.delayed(Duration(seconds: 3), () {
    line2();
  });

  await Future.delayed(Duration(seconds: 2), () {
    line3();
  });

  await Future.delayed(Duration(seconds: 1), () {
    line4();
  });
}

void printDelay(String txt, Duration delay) {
  for (int i = 0; i < txt.length; i++) {
    Future.delayed(delay * i, () {
      stdout.write(txt[i]);
    });
  }
}

line() {
  print("Pernahkah kau merasa");
}

line2() {
  print("Pernahkah kau merasa.....");
}

line3() {
  print("pernahkah kau merasa");
}

line4() {
  print("Hatimu hampa, pernahkah kau merasa hati mu kosong.....");
}


// import 'dart:async';
// import 'dart:io';

// void main(List<String> args) async {
//   print("Ready. Sing!\n");

//   await line();
//   await line2();
//   await line3();
//   await line4();
// }

// Future<void> printDelay(String txt, Duration delay) async {
//   for (int i = 0; i < txt.length; i++) {
//     await Future.delayed(delay, () {
//       stdout.write(txt[i]);
//     });
//   }
//   print(""); // Tambahkan newline setelah teks selesai
// }

// Future<void> line() async {
//   await printDelay("Pernahkah kau merasa", Duration(milliseconds: 300));
// }

// Future<void> line2() async {
//   await printDelay("pernahkah kau merasa.....", Duration(milliseconds: 300));
// }

// Future<void> line3() async {
//   await printDelay("pernahkah kau merasa", Duration(milliseconds: 300));
// }

// Future<void> line4() async {
//   await printDelay("Hatimu hampa, pernahkah kau merasa hatimu kosong.....", Duration(milliseconds: 500));
// }


