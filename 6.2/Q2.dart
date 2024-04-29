import 'dart:io';

class Billing {
  int? userId, password;

  void createAc() {
    stdout.write("Enter userid: ");
    userId = int.parse(stdin.readLineSync()!);
    stdout.write("Enter password: ");
    password = int.parse(stdin.readLineSync()!);
    print("");
  }

  void product() {
    int itemNo = 0,
        qty = 0,
        discount = 10,
        pen = 10,
        notebook = 30,
        coffee = 100,
        tea = 200,
        id = 0,
        pass = 0;
    int tax = 5, total = 0, finalTotal = 0;
    int choice;
    stdout.write("Enter 1 for pen:\n");
    stdout.write("Enter 2 for notebook:\n");
    stdout.write("Enter 3 for coffee:\n");
    stdout.write("Enter 4 for tea:\n");
    stdout.write("Enter 5 Exit\n");
    stdout.write("Enter your choice:");
    choice = int.parse(stdin.readLineSync()!);
    print("");

    switch (choice) {
      case 1:
        stdout.write("Enter userid: ");
        id = int.parse(stdin.readLineSync()!);
        stdout.write("Enter password: ");
        pass = int.parse(stdin.readLineSync()!);
        print("");
        if (userId == id && password == pass) {
          stdout.write("Enter item number: ");
          itemNo = int.parse(stdin.readLineSync()!);
          stdout.write("Enter item qty: ");
          qty = int.parse(stdin.readLineSync()!);

          if (qty > 3) {
            stdout.write("Item number: $itemNo\n");
            stdout.write("---Pen---\n");
            stdout.write("Item qty: $qty\n");
            stdout.write("Item discount: $discount\n");
            total = pen * qty;
            stdout.write("Total: $total\n");
            total = total - (discount * total ~/ 100);
            finalTotal = total + (tax * total ~/ 100);
            stdout.write("Final total: $finalTotal\n");
          } else {
            stdout.write("Item number: $itemNo\n");
            stdout.write("---Pen---\n");
            stdout.write("Item qty: $qty\n");
            stdout.write("Item discount: $discount\n");
            total = pen * qty;
            stdout.write("Total: $total\n");
          }
        } else {
          stdout.write("Invalid userid and password\n");
        }
        break;

      case 2:
        stdout.write("Enter userid: ");
        id = int.parse(stdin.readLineSync()!);
        stdout.write("Enter password: ");
        pass = int.parse(stdin.readLineSync()!);
        print("");

        if (userId == id && password == pass) {
          stdout.write("Enter item number: ");
          itemNo = int.parse(stdin.readLineSync()!);
          stdout.write("Enter item qty: ");
          qty = int.parse(stdin.readLineSync()!);

          if (qty > 3) {
            stdout.write("Item number: $itemNo\n");
            stdout.write("---notebook---\n");
            stdout.write("Item qty: $qty\n");
            stdout.write("Item discount: $discount\n");
            total = notebook * qty;
            stdout.write("Total: $total\n");
            total = total - (discount * total ~/ 100);
            finalTotal = total + (tax * total ~/ 100);
            stdout.write("Final total: $finalTotal\n");
          } else {
            stdout.write("Item number: $itemNo\n");
            stdout.write("---notebook---\n");
            stdout.write("Item qty: $qty\n");
            stdout.write("Item discount: $discount\n");
            total = notebook * qty;
            stdout.write("Total: $total\n");
          }
        } else {
          stdout.write("Invalid userid and password\n");
        }
        break;

      case 3:
        stdout.write("Enter userid: ");
        id = int.parse(stdin.readLineSync()!);
        stdout.write("Enter password: ");
        pass = int.parse(stdin.readLineSync()!);
        print("");

        if (userId == id && password == pass) {
          stdout.write("Enter item number: ");
          itemNo = int.parse(stdin.readLineSync()!);
          stdout.write("Enter item qty: ");
          qty = int.parse(stdin.readLineSync()!);

          if (qty > 3) {
            stdout.write("Item number: $itemNo\n");
            stdout.write("---coffee---\n");
            stdout.write("Item qty: $qty\n");
            stdout.write("Item discount: $discount\n");
            total = coffee * qty;
            stdout.write("Total: $total\n");
            total = total - (discount * total ~/ 100);
            finalTotal = total + (tax * total ~/ 100);
            stdout.write("Final total: $finalTotal\n");
          } else {
            stdout.write("Item number: $itemNo\n");
            stdout.write("---coffee---\n");
            stdout.write("Item qty: $qty\n");
            stdout.write("Item discount: $discount\n");
            total = coffee * qty;
            stdout.write("Total: $total\n");
          }
        } else {
          stdout.write("Invalid userid and password\n");
        }
        break;

      case 4:
        stdout.write("Enter userid: ");
        id = int.parse(stdin.readLineSync()!);
        stdout.write("Enter password: ");
        pass = int.parse(stdin.readLineSync()!);
        print("");

        if (userId == id && password == pass) {
          stdout.write("Enter item number: ");
          itemNo = int.parse(stdin.readLineSync()!);
          stdout.write("Enter item qty: ");
          qty = int.parse(stdin.readLineSync()!);

          if (qty > 3) {
            stdout.write("Item number: $itemNo\n");
            stdout.write("---tea---\n");
            stdout.write("Item qty: $qty\n");
            stdout.write("Item discount: $discount\n");
            total = tea * qty;
            stdout.write("Total: $total\n");
            total = total - (discount * total ~/ 100);
            finalTotal = total + (tax * total ~/ 100);
            stdout.write("Final total: $finalTotal\n");
          } else {
            stdout.write("Item number: $itemNo\n");
            stdout.write("---tea---\n");
            stdout.write("Item qty: $qty\n");
            stdout.write("Item discount: $discount\n");
            total = tea * qty;
            stdout.write("Total: $total\n");
            stdout.write("Item number: $itemNo\n");
          }
        } else {
          stdout.write("Invalid userid and password\n");
        }
        break;
    }
  }
}

void main() {
  Billing b = Billing();
  b.createAc();
  b.product();
}