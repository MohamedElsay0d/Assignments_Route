import 'dart:io';

void main() {
  List<double> numbers = [];

  print('Enter 3 numbers : ');
  numbers.add(double.parse(stdin.readLineSync()!));
  numbers.add(double.parse(stdin.readLineSync()!));
  numbers.add(double.parse(stdin.readLineSync()!));

  print('Sorted Numbers : ');
  numbers.sort();
  print(numbers.join('\n'));
}
