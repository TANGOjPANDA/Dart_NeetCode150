// Comparing more than 2 sets in Dart

void main() {
// Declaring set 1 with value
  var gfg1 = <String>{"GeeksForGeeks", "Geek1", "Geek2", "Geek3"};

// Declaring set 2 with value
  var gfg2 = <String>{"GeeksForGeeks", "Geek3", "Geek4", "Geek5"};

// Declaring set 3 with value
  var gfg3 = <String>{"GeeksForGeeks", "Geek5", "Geek6", "Geek7"};

// Finding Union
  print("Union of two sets is ${gfg1.union(gfg2).union(gfg3)}\n");

// Finding Intersection
  print(
      "Intersection of two sets is ${gfg1.intersection(gfg2).intersection(gfg3)}\n");

// Finding Difference
  print(
      "Difference of two sets is ${gfg2.difference(gfg1).difference(gfg3)}\n");
}
