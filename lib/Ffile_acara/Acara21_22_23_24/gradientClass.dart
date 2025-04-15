import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class Gradientclass extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _GradientclassState createState() => _GradientclassState();
}

class _GradientclassState extends State<Gradientclass> {
  final List<String> gambar = [
    "kimetsu.jpg",
    "bleach.jpg",
    "dr-stone.jpg",
    "hunterxhunter.jpg",
    "onepiece.jpg",
    "sololeveling.png",
    "spyxfamily.jpg",
    "tokyo.jpg",
  ];

  static const Map<String, Color> colors = {
    'chimmy': Color(0xFFF2DB569),
    'cooky': Color(0xFFF386B8),
    'koya': Color(0xFFF45CAF5),
    'mang': Color(0xFFFB19ECB),
    'rj': Color(0xFFFFF58E4C),
    'shooky': Color(0xFFF46C1BE),
    'tata': Color(0xFFFFFEA0E),
    'van': Color(0xFFFDBE4E9),
  };

  @override
  Widget build(BuildContext context) {
    timeDilation = 1.0;
    return new Scaffold(
      body: new Container(
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
            colors: [Colors.white, Colors.purple, Colors.deepPurple],
          ), // LinearGradient
        ), // BoxDecoration
        child: new PageView.builder(
          controller: new PageController(viewportFraction: 0.8),
          itemCount: gambar.length,
          itemBuilder: (BuildContext context, int i) {
            return new Padding(
              padding:
                  new EdgeInsets.symmetric(horizontal: 5.0, vertical: 50.0),
              child: new Material(
                elevation: 8.0,
                child: new Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    new Hero(
                      tag: gambar[i],
                      child: new Material(
                        child: new InkWell(
                          child: new Flexible(
                            flex: 1,
                            child: new Container(
                              color: colors.values.elementAt(i),
                              child: new Image.asset(
                                "img/${gambar[i]}",
                                fit: BoxFit.cover,
                              ), // Image.asset
                            ), // Container
                          ), // Flexible
                          onTap: () => Navigator.of(context).push(
                            new MaterialPageRoute(
                              builder: (BuildContext context) => new Halamandua(
                                gambar: gambar[i],
                                colors:
                                    colors.values.elementAt(i % colors.length),
                              ), // Halamandua
                            ), // MaterialPageRoute
                          ), // InkWell
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ), // Container
    ); // Scaffold
  }

  // return Scaffold(
  //   appBar: AppBar(
  //     title: Text('Aplikasi Saya'),
  //   ),
  //   body: Container(
  //     decoration: BoxDecoration(
  //       gradient: LinearGradient(
  //         begin: FractionalOffset.topCenter,
  //         end: FractionalOffset.bottomCenter,
  //         colors: [
  //           Colors.white,
  //           Colors.purpleAccent,
  //           Colors.deepPurple,
  //         ],
  //       ),
  //     ),
  //     child: Center(
  //       child: Text(
  //         'Halo Dunia!',
  //         style: TextStyle(fontSize: 24.0, color: Colors.white),
  //       ),
  //     ),
  //   ),
  // );
}

class Halamandua extends StatefulWidget {
  Halamandua({required this.gambar, required this.colors});

  final String gambar;
  final Color colors;

  @override
  State<Halamandua> createState() => _HalamanduaState();
}

class _HalamanduaState extends State<Halamandua> {
  Color warna = Colors.grey;

  void _pilihannya(Pilihan pilihan) {
    setState(() {
      warna = pilihan.warna;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("BT21"),
        backgroundColor: Colors.purpleAccent,
        actions: <Widget>[
          new PopupMenuButton<Pilihan>(
            onSelected: _pilihannya,
            itemBuilder: (BuildContext context) {
              return listPilihan.map((Pilihan x) {
                return new PopupMenuItem(
                  child: new Text(x.teks),
                  value: x,
                );
              }).toList();
            },
          )
        ],
      ), // AppBar
      body: new Stack(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              gradient: new RadialGradient(
                center: Alignment.center,
                colors: [Colors.purple, Colors.white, Colors.deepPurple],
              ),
            ),
          ),
          new Center(
            child: new Hero(
              tag: widget.gambar,
              child: new ClipOval(
                child: new SizedBox(
                  width: 200.0,
                  height: 200.0,
                  child: new Material(
                    child: new InkWell(
                      onTap: () => Navigator.of(context).pop(),
                      child: new Flexible(
                        flex: 1,
                        child: new Container(
                          color: widget.colors,
                          child: new Image.asset(
                            "img/${widget.gambar}",
                            fit: BoxFit.cover,
                          ), // Image.asset
                        ), // Container
                      ), // Flexible
                    ), // InkWell
                  ), // Material
                ), // SizedBox
              ), // ClipOval
            ), // Hero
          ), // Center
        ],
      ), // Stack
    ); // Scaffold
  }
}

class Pilihan {
  const Pilihan({required this.teks, required this.warna});
  final String teks;
  final Color warna;
}

List<Pilihan> listPilihan = const <Pilihan>[
  const Pilihan(teks: "Red", warna: Colors.red),
  const Pilihan(teks: "Green", warna: Colors.green),
  const Pilihan(teks: "Blue", warna: Colors.blue),
]; // <Pilihan>[]
