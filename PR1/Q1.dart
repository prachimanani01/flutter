import 'dart:io';

void main() {
  List array = [];
  stdout.write("Enter the element number you want : ");
  int length = int.parse(stdin.readLineSync() ?? "0");
  for (int i = 1; i <= length; i++) {
    stdout.write("Enter Element : ");
    int elem = int.parse(stdin.readLineSync() ?? "0");
    array.add(elem);
  }
  print("Elements : ");
  array.forEach((element) {
    stdout.write("$element   ");
  });
  print("");
  print("Negative elements is : ");
  array.forEach((element) {
    if (element < 0) {
      stdout.write("$element");
    }
  });
}
