import 'dart:io';
class Factorial {
  int factorial(int n){
    if(n == 0) {
      return 1;
    } else {
      return n * factorial(n - 1);
    }
  }
}

void main() {
  print("Enter a Number : ");
  int num = int.parse(stdin.readLineSync()!);
  Factorial factCalculator = Factorial();
  int fact = factCalculator.factorial(num);
  print("The Factorial of number $num is $fact.");
}