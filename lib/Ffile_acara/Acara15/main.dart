import 'package:flutter/material.dart';
import 'myHomePage.dart';
void main() {
  runApp(MyApp()); // Menjalankan aplikasi Flutter
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Myhomepage(), // Menggunakan MyHomePage dari file lain
    );
  }
}