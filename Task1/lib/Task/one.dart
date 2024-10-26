import 'dart:io';

void main() {
  stdout.write('Enter Number : ');
  int number = int.parse(stdin.readLineSync()!);
  if (number % 2 == 0) {
    print('Yes');
  } else {
    print('No');
  }
}
