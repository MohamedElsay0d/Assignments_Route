import 'dart:io';

void main() {
  print("Enter the number of students:");
  int number_Students = int.parse(stdin.readLineSync()!);
  List<int> scores = [];
  print("Enter the scores of the students:");
  for (int i = 0; i < number_Students; i++) {
    scores.add(int.parse(stdin.readLineSync()!));
  }
  int bestScore = scores.reduce((a, b) => a > b ? a : b);
  for (int i = 0; i < number_Students; i++) {
    int score = scores[i];
    String grade;

    if (score >= bestScore - 10) {
      grade = "A";
    } else if (score >= bestScore - 20) {
      grade = "B";
    } else if (score >= bestScore - 30) {
      grade = "C";
    } else if (score >= bestScore - 40) {
      grade = "D";
    } else {
      grade = "F";
    }

    print("Student ${i + 1} score: $score, grade: $grade");
  }
}
