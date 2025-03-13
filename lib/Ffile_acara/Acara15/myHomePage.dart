import 'package:flutter/material.dart';

class Myhomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Panji"),
        backgroundColor: Colors.red[900],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            print("Home button clicked!");
          },
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
                EdgeInsets.all(16.0)), // Padding tombol
            shape: MaterialStateProperty.all<OutlinedBorder>(
                CircleBorder()), // Bentuk tombol bulat
            backgroundColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.hovered)) {
                  return Colors.red[500]; // Warna saat hover
                } else if (states.contains(MaterialState.pressed)) {
                  return Colors.red[900];
                }
                return Colors.red[400]; // Warna default
              },
            ),
          ),
          child: Icon(
            Icons.home,
            color: Colors.white,
            size: 32.0,
          ),
        ),
      ),
    );
  }
}
// class MyHomePage  {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Panji"),
//         backgroundColor: Colors.red[900],
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             print("Home button clicked!");
//           },
//           style: ButtonStyle(
//             padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(16.0)), // Padding tombol
//             shape: MaterialStateProperty.all<OutlinedBorder>(CircleBorder()), // Bentuk tombol bulat
//             backgroundColor: MaterialStateProperty.resolveWith<Color?>(
//               (Set<MaterialState> states) {
//                 if (states.contains(MaterialState.hovered)) {
//                   return Colors.yellow[500]; // Warna saat hover
//                 }
//                 return Colors.red[900]; // Warna default
//               },
//             ),
//           ), 
//           child: Icon(
//             Icons.home,
//             color: Colors.white,
//             size: 32.0,
//           ), 
//         ),
//       ),
//     );
//   }
// }
