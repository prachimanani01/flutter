import 'dart:io';

void main() {
  List<MapEntry<String, dynamic>> employees = [];

  int numEmployees;
  stdout.write("Enter the number of employees: ");
  numEmployees = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < numEmployees; i++) {
    stdout.write("Enter name of employee $i: ");
    String name = stdin.readLineSync()!;
    stdout.write("Enter age of employee $i: ");
    int age = int.parse(stdin.readLineSync()!);
    stdout.write("Enter salary of employee $i + 1}: ");
    double salary = double.parse(stdin.readLineSync()!);

    employees.add(MapEntry<String, dynamic>('Employee ${i + 1}', {
      'name': name,
      'age': age,
      'salary': salary,
    }));
  }

  print("\nTotal Employee Information:");
  for (var entry in employees) {
    print("${entry.key}: ${entry.value}");
  }
}