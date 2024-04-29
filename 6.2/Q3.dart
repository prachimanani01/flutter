import 'dart:io';

class Train {
  int t_Num;
  String t_Name;
  String source;
  String dest;
  String t_Time;

  Train(this.t_Num, this.t_Name, this.source, this.dest, this.t_Time);

  void displayTrainDetails() {
    stdout.write('\n\t-----------------------------------------\n');
    stdout.write('\t|  Train number\t :- $t_Num\t\t\t|\n');
    stdout.write('\t|  Train name\t :- $t_Name\t\t\t|\n');
    stdout.write('\t|  Arriving at\t :- $t_Time\t\t\t|\n');
    stdout.write('\t|  Route\t :- From $source to $dest\t|\n');
    stdout.write('\t-----------------------------------------\n');
  }
}

List<Train> trains = [];

void addTrain() {
  stdout.write('Enter train number: ');
  int t_Num = int.parse(stdin.readLineSync()!);
  stdout.write('Enter train name: ');
  String t_Name = stdin.readLineSync()!;
  stdout.write('Enter source: ');
  String source = stdin.readLineSync()!;
  stdout.write('Enter destination: ');
  String dest = stdin.readLineSync()!;
  stdout.write('Enter arrival time: ');
  String t_Time = stdin.readLineSync()!;
  print("");
  Train newTrain = Train(t_Num, t_Name, source, dest, t_Time);
  trains.add(newTrain);
  stdout.write('Train added successfully.');
  print("\n");
}

void displayTrainByNumber() {
  stdout.write('Enter train number: ');
  int searchNum = int.parse(stdin.readLineSync()!);
  bool found = false;
  for (Train train in trains) {
    if (train.t_Num == searchNum) {
      train.displayTrainDetails();
      found = true;
      break;
    }
  }
  if (!found) {
    stdout.write('Train not found.');
  }
}

void main() {
  int choice;
  do {
    stdout.write('\n1.ADD TRAIN DETAILS\n');
    stdout.write('2.SEARCH TRAIN BY NUMBER\n');
    stdout.write('3.EXIT\n');
    stdout.write('\nEnter your choice: ');
    choice = int.parse(stdin.readLineSync()!);
    stdout.write('\n-------------------------\n');
    switch (choice) {
      case 1:
        addTrain();
        break;
      case 2:
        displayTrainByNumber();
        break;
      case 3:
        stdout.write('EXIT...THANK YOU FOR VISIT...');
        break;
      default:
        stdout.write('Your choice is Invalid..... Try again....');
        break;
    }
  } while (choice != 3);
}