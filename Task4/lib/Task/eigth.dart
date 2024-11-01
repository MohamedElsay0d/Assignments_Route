import 'dart:io';

void main() {
  List<int> numbers = [];
  print("Enter ten numbers:");
  for (int i = 0; i < 10; i++) {
    int number = int.parse(stdin.readLineSync()!);
    if (!numbers.contains(number)) {
      numbers.add(number);
    }
  }
  print("Unique numbers: ${numbers.length}");
  print(numbers);
}
