import 'package:flutter/material.dart';
import 'package:acara_bkpm/Ffile_acara/Acara16/DrawerScreen.dart';
import 'package:acara_bkpm/Ffile_acara/Acara16/models/chart_Models.dart';

class Telegram extends StatefulWidget {
  @override
  _TelegramState createState() => _TelegramState();
}

class _TelegramState extends State<Telegram> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Telegram",
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
        iconTheme: IconThemeData(
          color: Colors.white, // Ubah warna ikon menu
          size: 28, // Ubah ukuran ikon
        ),
        backgroundColor: Colors.indigo[400],
      ),
      drawer: DrawerScreen(),
      body: ListView.separated(
        itemCount: items.length,
        itemBuilder: (ctx, i) {
          return ListTile(
            leading: CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage(items[i].profilUrl),
            ),
            title: Text(
              items[i].name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(items[i].message),
            trailing: Text(items[i].time),
          );
        },
        separatorBuilder: (ctx, i) => Divider(),
      ),
    );
  }
}
