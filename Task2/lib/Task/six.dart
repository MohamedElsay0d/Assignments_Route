import 'dart:io';

void main() {
  stdout.write('Enter an integer: ');
  int number = int.parse(stdin.readLineSync()!);
  int reversedNumber = 0;
  while (number != 0) {
    int remainder = number % 10;
    reversedNumber = reversedNumber * 10 + remainder;
    number = number ~/ 10;
  }
  print('Reversed number: $reversedNumber');
}
