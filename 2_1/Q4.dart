import 'dart:io';

void main() {
  int a;

  stdout.write("Enter first number :");
  a = int.parse(stdin.readLineSync() ?? "0");

  for (int i = 1; i <= 10; i++) {
    stdout.write("$a X $i = ${a * i}\n");
  }
} 