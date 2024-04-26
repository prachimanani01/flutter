import 'dart:io';

void main() {
  int a, b;

  stdout.write("Enter first number :");
  a = int.parse(stdin.readLineSync() ?? "0");
  stdout.write("Enter second number :");
  b = int.parse(stdin.readLineSync() ?? "0");

  for (int i = a; i <= b; i++) {
    for (int j = 1; j <= 10; j++) {
      print("$i X $j = ${i * j}");
    }
    print("_________________________\n");
  }
}