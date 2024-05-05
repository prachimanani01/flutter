import 'dart:io';

class Product {
  final int id;
  final String name;
  final int price;
  int qty = 1;
  Product(
      {required this.id,
      required this.name,
      required this.price,
      this.qty = 1});
  factory Product.factory({required Map data}) {
    return Product(id: data['id'], name: data['name'], price: data['price']);
  }
  static List<Map<String, dynamic>> allproduct = [
    {'id': 1,'name': "laptop",'price': 60000,},
    {'id': 2,'name': "computer",'price': 55000,},
    {'id': 3,'name': "mouse",'price': 3000,},
    {'id': 4,'name': "keybord",'price': 5000,},
    {'id': 5,'name': "tv",'price': 35000,},
    {'id': 6,'name': "ac",'price': 20000,},
    {'id': 7,'name': "Phone",'price': 2999,},
  ];
}

class customer {
  final int id;
  final String name;
  final int contact;
  int bill = 0;
  double b=0;
  List<Product> cart = [];
  customer({required this.id, required this.name, required this.contact}) {
    int choice;

    do {
      print("1 for add product.");
      
      print("2 for EXIT.");
      stdout.write("Enter your choice : ");
      choice = int.parse(stdin.readLineSync()!);

      switch (choice) {
        case 1:
          Product.allproduct.forEach((e) {
            print("${e['id']}\t${e['name']}\t${e['price']}");
          });
          stdout.write("Enter product number to add your cart : ");
          int n = int.parse(stdin.readLineSync()!);
          stdout.write("Enter quantity :");
          int q = int.parse(stdin.readLineSync()!);

          Product p = Product.factory(data: Product.allproduct[n - 1]);
          p.qty = q;
          cart.add(p);
          break;
       
        case 2:
          break;
        default:
          print("Enter valid Number!!");
          break;
      }
    } while (choice != 2);
    cart.forEach((e) {
      bill += (e.qty * e.price);
    });
    if (bill >= 500 && bill < 1500) {
      b=(bill * 10) / 100;
    } else if (bill >= 1500 && bill < 3500) {
      b=(bill * 20) / 100;
    } else if (bill >= 3500 && bill < 6500) {
      b=(bill * 25) / 100;
    } else {
     b=(bill * 30) / 100;
    }
    print("your bill is $b");
  }
}

void main() {
  stdout.write("Enter The Number of Customer : ");
  int num = int.parse(stdin.readLineSync()!);
  List<customer> cus = List.generate(num, (index) {
  stdout.write("Enter ID : ");
    int id = int.parse(stdin.readLineSync()!);
    stdout.write("Enter Name : ");
    String name = stdin.readLineSync()!;             Itna to kon busy hota he      Iss se achaa to ashish ya nishant ya or koi hota na to wo jldi reply deta
    stdout.write("Enter Contact number : ");
    int contact = int.parse(stdin.readLineSync()!);

    return customer(id: id, name: name, contact: contact);
  });
  stdout.write("Enter search id number : ");
  int cid = int.parse(stdin.readLineSync()!);
  cus.forEach((e) {
    do {
      if (cid == e.id) {
        print("${e.id}\n${e.name}\n${e.b}");
      } else {
        print("INVALID NUMBER...");
      }
    } while (cid != 2);
  });
}