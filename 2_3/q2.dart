import 'dart:io';
void main() {
    List<String> myList = [];
    stdout.write("Enter Number of elements you want to add in List : ");
    int len = int.parse(stdin.readLineSync()!);
    for(int i = 1 ;i <= len; i++){
      stdout.write("Enter the String $i Value : ");
      String str = stdin.readLineSync()!;
      myList.add(str);
      print("");
    }
    myList = myList.toSet().toList();
    myList.forEach((element) {
      print("$element");
    });
}