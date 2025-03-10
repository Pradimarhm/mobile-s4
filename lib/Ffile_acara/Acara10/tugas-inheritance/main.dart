import 'dart:io';

import 'armor_titan.dart';
import 'attack_titan.dart';
import 'beast_titan.dart';
import 'human.dart';

void main() {
  stdout.write("Masukkan power point Armor Titan: ");
  int armorPower = int.parse(stdin.readLineSync()!);
  ArmorTitan armorTitan = new ArmorTitan();
  armorTitan.powerPoint = armorPower;
  print("Armor Titan Power: ${armorTitan.powerPoint}");
  print(armorTitan.terjang());
  print("--------");

  stdout.write("Masukkan power point Attack Titan: ");
  int attackpower = int.parse(stdin.readLineSync()!);
  AttackTitan attackTitan = AttackTitan();
  attackTitan.powerPoint = attackpower;
  print("attack Titan Power: ${attackTitan.powerPoint}");
  print(attackTitan.punch());
  print("--------");

  stdout.write("Masukkan power point Beast Titan: ");
  int beastPower = int.parse(stdin.readLineSync()!);
  BeastTitan beastTitan = BeastTitan();
  beastTitan.powerPoint = beastPower;
  print("Beast Titan Power: ${beastTitan.powerPoint}");
  print("beastTitan.lempar()");
  print("--------");

  stdout.write("Masukkan powerPoint Human: ");
  int humanPower = int.parse(stdin.readLineSync()!);
  Human human = Human();
  human.powerPoint = humanPower;
  print("Human Power: ${human.powerPoint}");
  print(human.killAllTitan());
  print("--------selesai--------");
}
