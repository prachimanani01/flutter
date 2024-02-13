void main() 
{
  List<int> largest = [1, 2, -3, 4, 6, -7, 8, -9];
  print("Original List : ${largest}");
  int large = largest[0];
  for (int i in largest) {
    if (large < i) {
      large = i;
    }
  }
  print("Negative Elements in Array : ");
  print("${large}");
}