import 'package:acara_bkpm/Ffile_acara/Acara19/AboutAcara19.dart';
import 'package:acara_bkpm/Ffile_acara/Acara19/screen.dart';
// import 'package:acara_bkpm/main.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //jika ingin mengirim argument
    // final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Screen());
      case '/about':
        return MaterialPageRoute(builder: (_)=> Aboutacara19());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Error"),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Text('Error Page'),
        ),
      );
    });
  }
}
