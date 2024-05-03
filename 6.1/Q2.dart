List<String> getUniqueNames(List<String> names) {
  
  Set<String> uniqueNames = {};

  
  for (var name in names) {
    uniqueNames.add(name);
  }

  
  return uniqueNames.toList();
}

void main() {
  List<String> names = ["PRACHI", "KUNJAL", "RUHI", "MAYURI", "NEHA"];
  List<String> uniqueNames = getUniqueNames(names);
  print(uniqueNames); 
}