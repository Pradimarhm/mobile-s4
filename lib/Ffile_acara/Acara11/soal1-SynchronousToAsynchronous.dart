import 'dart:async';

void main() async {
  var h = Human();

  print("Luffy");
  print("Zoro");
  print("Killer");
  print(h.name);
  await h.getData();
  print(h.name);
  // var timer = Timer(Duration(seconds: 3), () => h.getData());
}

class Human {
  String name = "Nama Character One Piece";

  Future<void> getData() async {
    await Future.delayed(Duration(seconds: 3));
    name = "Nico Robin";
    print("get data [done]");
  }
}
