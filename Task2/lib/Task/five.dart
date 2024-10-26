import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);
  int factorial = 1;
  while (number > 0) {
    factorial *= number;
    number--;
  }
  print("Factorial: $factorial");
}
