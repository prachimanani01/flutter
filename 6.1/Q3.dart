import 'dart:io';
int addition(int n1, int n2) {
  return n1 + n2;
}
int subtraction(int n1, int n2) {
  return n1 - n2;
}
int multiplication(int n1, int n2) {
  return n1 * n2;
}
double division(int n1, int n2) {
  if (n2 == 0) {
    print("Error: Division by zero is not allowed.");
    return 0;
  } else {
    return n1 / n2;
  }
}
void main() {
  print("Enter The value for Number 1 : ");
  String? input1 = stdin.readLineSync();
  int num1 = input1 != null ? int.parse(input1) : 0;
  print("Enter The value for Number 2 : ");
  String? input2 = stdin.readLineSync();
  int num2 = input2 != null ? int.parse(input2) : 0;

  print("Enter 1 for Addition ");
  print("Enter 2 for Subtraction ");
  print("Enter 3 for Multiplication ");
  print("Enter 4 for Division ");

  print("Enter Your Choice : ");
  String? choiceInput = stdin.readLineSync();
  int choice = choiceInput != null ? int.parse(choiceInput) : 0;

  switch (choice) {
    case 1:
      int sum = addition(num1, num2);
      print("Result: $sum");
      break;
    case 2:
      int sub = subtraction(num1, num2);
      print("Result: $sub");
      break;
    case 3:
      int mul = multiplication(num1, num2);
      print("Result: $mul");
      break;
    case 4:
      double div = division(num1, num2);
      print("Result: $div");
      break;
    default:
      print("Enter Valid Choice ..");
      break;
  }
}