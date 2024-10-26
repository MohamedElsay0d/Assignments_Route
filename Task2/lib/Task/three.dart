import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);
  int sum = 0;
  for (int i = 0; i < number; i++) {
    int number = 2 * i + 1;
    stdout.write("$number ");
    sum += number;
  }
  print("Sum: $sum");
}
