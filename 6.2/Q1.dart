import 'dart:io';

class Student {
  late int id;
  late String name;
  late int age;
  late String course;
  late String email;
  late String city;
  late String college;

  void setData() {
    stdout.write("Enter ID: ");
    id = int.parse(stdin.readLineSync()!);
    stdout.write("Enter NAME: ");
    name = stdin.readLineSync()!;
    stdout.write("Enter AGE: ");
    age = int.parse(stdin.readLineSync()!);
    stdout.write("Enter COURSE: ");
    course = stdin.readLineSync()!;
    stdout.write("Enter EMAIL: ");
    email = stdin.readLineSync()!;
    stdout.write("Enter CITY: ");
    city = stdin.readLineSync()!;
    stdout.write("Enter COLLEGE: ");
    college = stdin.readLineSync()!;
    
  }

  void getData() {
    
    stdout.write("ID : $id\n");
    stdout.write("NAME : $name\n");
    stdout.write("AGE : $age\n");
    stdout.write("COURSE : $course\n");
    stdout.write("EMAIL : $email\n");
    stdout.write("CITY : $city\n");
    stdout.write("COLLEGE : $college\n");
    stdout.write("__________________________________\n");
  }
}

void main() {
  stdout.write("Enter number of students:");
  int n = int.parse(stdin.readLineSync() ?? "0");
  List<Student> students = List.generate(n, (index) => Student());
  students.forEach((obj) {
    obj.setData();
  });
  print("\n");
  students.forEach((obj) {
    obj.getData();
  });
}