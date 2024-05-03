double successPercentage([double? maths, double? science, double? english, double? programming, double? communication]) {
  const double passingGrade = 50;
  int totalMarks = 500;
  int marksObtained = maths == null ? 0 : maths;
  marksObtained += science == null ? 0 : science;
  marksObtained += english == null ? 0 : english;
  marksObtained += programming == null ? 0 : programming;
  marksObtained += communication == null ? 0 : communication;
  double percentage = (marksObtained / totalMarks) * 100;
  if (percentage >= passingGrade) {
    return percentage;
  } else {
    return 0;
  }
}

void main() {
  double maths = 85;
  double science = 90;
  double english = 80;
  double programming = 95;
  double communication = 88;
  double percentage = successPercentage(maths, science, english, programming, communication);
  if (percentage > 0) {
    print('Your success percentage is $percentage%');
  } else {
    print('You have not qualified for the job');
  }
}