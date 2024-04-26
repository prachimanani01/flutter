import 'dart:io';

void main() {
  List array = [];
  stdout.write("Enter the elements you want : ");
  int len = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= len; i++) {
    stdout.write("Enter Element : ");
    int elem = int.parse(stdin.readLineSync()!);
    array.add(elem);
  }
  int large = array[0];
  array.forEach((element) {
    if (element > large) {
      large = element;
    }
  });
  print("Largest Element is : $large");
}
