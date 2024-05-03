int cube(int number) {
  return number * number * number;
}

void main() {
  int inputNumber = 5; 
  int result = cube(inputNumber);
  print('The cube of $inputNumber is $result');
}