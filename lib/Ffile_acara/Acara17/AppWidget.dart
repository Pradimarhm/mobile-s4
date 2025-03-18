import 'package:flutter/material.dart';

class Appwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        // title: Text("Belajar MaterialApp Scaffold"),
        // backgroundColor: Colors.blue,

        leading: Icon(Icons.dashboard),
        title: Text("Belajar MaterialApp Scaffold"),
        actions: <Widget>[
          Icon(Icons.search),
          // Icon(Icons.find_in_page),
        ],
        actionsIconTheme: IconThemeData(color: Colors.yellow),
        backgroundColor: Colors.orange,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(4.0),
          child: Container(
            color: Colors.orange,
            height: 4.0,
          ),
        ),
        centerTitle: true,
      ),

      //tambahan
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pinkAccent,
        child: Text('+'),
        onPressed: () {},
      ),
      body:
          // Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: <Widget>[
          //     Container(width: 50, height: 50, decoration:BoxDecoration(
          //       color: Colors.redAccent,
          //       shape: BoxShape.circle
          //     ),),
          //     Container(width: 50, height: 50, decoration:BoxDecoration(
          //       color: Colors.pinkAccent,
          //       shape: BoxShape.circle
          //     ),),
          //     // Container(width: 50, height: 50, decoration:BoxDecoration(
          //     //   color: Colors.blueAccent,
          //     //   shape: BoxShape.circle
          //     // ),),

          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.end,
          //       children: <Widget>[
          //         Container(width: 50, height: 50, decoration:BoxDecoration(
          //           color: Colors.blueAccent,
          //           shape: BoxShape.circle
          //         ),),
          //         Container(width: 50, height: 50, decoration:BoxDecoration(
          //           color: Colors.redAccent,
          //           shape: BoxShape.circle
          //         ),),
          //         Container(width: 50, height: 50, decoration:BoxDecoration(
          //           color: Colors.pinkAccent,
          //           shape: BoxShape.circle
          //         ),),
          //       ],
          //     ),
          //   ],
          // ),
          Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.redAccent,
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(height: 10), // Jarak antar elemen di Column
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.pinkAccent,
              shape: BoxShape.circle,
            ),
          ),

          // Menggunakan Container untuk memberikan margin pada Row
          Container(
            margin: EdgeInsets.only(
                top: 20), // Memberi jarak antara Column dan Row
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
