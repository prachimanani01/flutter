import 'dart:io';

void main() {
  int a, b, c = 0;

  stdout.write("Enter first number :");
  a = int.parse(stdin.readLineSync() ?? "0");
  stdout.write("Enter second number :");
  b = int.parse(stdin.readLineSync() ?? "0");

  c = a + b;
  stdout.write("$a+$b=$c");
}