import 'dart:io';

void main() {
  List array = [1, 2, 3, 4];
  print("1. Enter an element ");
  print("2. Update an element ");
  print("3. Remove an element ");
  print("4. View the elements ");
  stdout.write("Enter Your Choice : ");
  int choice = int.parse(stdin.readLineSync()!);
  switch (choice) {
    case 1:
      stdout.write("Enter the Element  : ");
      int addVar = int.parse(stdin.readLineSync()!);
      array.add(addVar);
      print(array);
      break;
    case 2:
      stdout.write("Enter the Index you want to Update : ");
      int index = int.parse(stdin.readLineSync()!);
      print("");
      stdout.write("Enter the Element in that index : ");
      int newEle = int.parse(stdin.readLineSync()!);
      array[index] = newEle;
      print(array);
      break;
    case 3:
      stdout.write("Enter the Element you want to remove: ");
      int removeVar = int.parse(stdin.readLineSync()!);
      array.remove(removeVar);
      print(array);
      break;
    case 4:
      stdout.write("Here it is : ");
      array.forEach((element) {
        stdout.write("$element  ");
      });
      break;
    default:
      print("Invalid Choice!!");
  }
}
