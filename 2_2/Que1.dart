import 'dart:io';

void main() {
  List myList = [];
  stdout.write('Enter the length of the list: ');
  int length = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < length; i++) {
    stdout.write('Enter element ${i + 1}: ');
    int num = int.parse(stdin.readLineSync()!);
    myList.add(num);
  }
  myList.forEach((element) => print('$element hello')); 
}