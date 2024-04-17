import 'dart:io';

void main(){
  List<String> statesList = [];
  for(int i = 1 ; i<=28;i++){
    stdout.write("Enter State $i Name : "); 
    String name = stdin.readLineSync()!;
    statesList.add(name);
  }
  statesList.forEach((element)=>print('$element'));
}