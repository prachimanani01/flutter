void main() {
  List a = [
    [2, 7, 5],
    [9, 3, 8],
    [1, 4, 10]
  ];
  List b = [
    [2, 3, 11],
    [5, 12, 4],
    [7, 9, 15]
  ];
  List sum = [
    [0, 0, 0],
    [0, 0, 0],
    [0, 0, 0]
  ];

  int i, j;
  for (i = 0; i < 3; i++) {
    for (j = 0; j < 3; j++) {
      sum[i][j] = a[i][j] + b[i][j];
    }
    print("$sum");
  }
}
