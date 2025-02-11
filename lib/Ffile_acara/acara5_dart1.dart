void main() {
  //tipedata string
  var sentences = "dart";
  print(sentences[0]); // "d"
  print(sentences[2]);// "r"

  //tipedata numbers
  // declare an integer
  int num1 = 10;

  // declare a double value
  double num2 = 10.50;
  // print the values
  print(num1); //10
  print(num2); //10.5

  //ubah string ke number
  print(num.parse('12')); //12
  print(num.parse('10.91')); //10.91

  //int ke string
  int j = 45;
  String t = "$j";
  print("hello"+ t);
}
