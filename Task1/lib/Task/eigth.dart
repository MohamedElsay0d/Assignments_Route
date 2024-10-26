import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);
  int counter = 0;
  for (int i = 2; i <= number - 1; i++) {
    if (number % i == 0) {
      counter++;
      break;
    }
  }
  if (counter == 0) {
    print("$number is prime");
  } else {
    print("$number is not prime");
  }
}
