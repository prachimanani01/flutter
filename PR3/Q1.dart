import 'dart:io';
import 'moduleparamitersum.dart';


void main()
{
    List<int> allNumber = [];
    int numbers, i, userNum;


    stdout.write("How many numbers you want to sum : ");
    numbers = int.parse(stdin.readLineSync()!);


    stdout.write("Enter numbers:\n");
    for (i = 0; i < numbers; i++) {
    userNum = int.parse(stdin.readLineSync()!);
    allNumber.add(userNum);
    }


    allNumber.forEach((val) {
    SumOfParamiters.sumnumber(val);
    });


    SumOfParamiters.output();
}




class SumOfParamiters
{
    static int sumAllNumber = 0;


    static void sumnumber(int val) {
    sumAllNumber = val + sumAllNumber;
    }
     static void output() {
    print("Sum Of All Numbers is: $sumAllNumber");
    }
}