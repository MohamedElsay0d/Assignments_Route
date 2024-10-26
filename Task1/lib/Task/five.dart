import 'dart:io';

void main() {
  stdout.write('Enter 3 numbers : ');
  int number1 = int.parse(stdin.readLineSync()!);
  int number2 = int.parse(stdin.readLineSync()!);
  int number3 = int.parse(stdin.readLineSync()!);

  number1 > number2 && number1 > number3
      ? print('The largest number is $number1')
      : number2 > number1 && number2 > number3
          ? print('The largest number is $number2')
          : print('The largest number is $number3');
  number1 < number2 && number1 < number3
      ? print('The smallest number is $number1')
      : number2 < number1 && number2 < number3
          ? print('The smallest number is $number2')
          : print('The smallest number is $number3');
}
