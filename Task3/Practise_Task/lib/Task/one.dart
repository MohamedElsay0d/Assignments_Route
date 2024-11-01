import 'dart:io';

int getMin(List<int> numbers) {
  if (numbers.isEmpty) {
    throw ArgumentError('The list cannot be empty');
  }
  int min = numbers[0];

  for (int number in numbers) {
    if (number < min) {
      min = number;
    }
  }

  return min;
}

void main() {
  List<int> numbers = [];
  stdout.write('Enter 4 numbers: ');

  for (int i = 0; i < 4; i++) {
    numbers.add(int.parse(stdin.readLineSync()!));
  }

  print('The minimum value is: ${getMin(numbers)}');
}
