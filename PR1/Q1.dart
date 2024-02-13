import 'dart:io';

void main(){
  List<int> array = [1,2,-3,4,6,-7,8,-9];
  print("Original List : ${array}");
  print("Negative Elements in Array : ");
  for(int i in array){
    if(i<0){
      stdout.write("${i} ");
    }
  }
}