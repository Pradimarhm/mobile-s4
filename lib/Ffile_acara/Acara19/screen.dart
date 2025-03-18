import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Routing 2'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/about');
                },
                child: Text('Tap Untuk ke Aboutpage'),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/halaman-404');
                },
                child: Text('Tap Halaman lain'),
              ),
            ),

            // ElevatedButton(
            //     onPressed: () {
            //       Navigator.pushNamed(context, '/about');
            //     },
            //     child: Text('Tap Untuk ke Aboutpage')),
            // ElevatedButton(
            //     onPressed: () {
            //       Navigator.pushNamed(context, '/halaman-404');
            //     },
            //     child: Text('Tap Halaman lain'),
            // ),
          ],
        ),
      ),
    );
  }
}
