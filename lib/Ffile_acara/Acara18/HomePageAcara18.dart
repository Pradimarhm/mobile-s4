import 'package:acara_bkpm/Ffile_acara/Acara18/AbouutPage.dart';
import 'package:flutter/material.dart';

class Homepageacara18 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar Routing"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Route route =
                  MaterialPageRoute(builder: (context) => Abouutpage());
              Navigator.push(context, route);
            },
            child: Text('Tap untuk ke About Page')),
      ),
    );
  }
}