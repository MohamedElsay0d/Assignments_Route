import 'dart:io';

void main() {
  List<int> scores = [];
  int aboveOrEqual = 0;
  int below = 0;
  int equal = 0;
  print("Enter scores (enter a negative number to end):");

  while (true) {
    int score = int.parse(stdin.readLineSync()!);
    if (score < 0) break;
    if (scores.length < 100) {
      scores.add(score);
    } else {
      print("Reached the maximum limit");
      break;
    }
  }
  double average = scores.reduce((a, b) => a + b) / scores.length;
  for (int score in scores) {
    if (score > average) {
      aboveOrEqual++;
    } else if (score < average) {
      below++;
    } else {
      equal++;
    }
  }
  print("above average: $aboveOrEqual");
  print("below average: $below");
  print("equal average: $equal");
}
