import 'dart:io';

void main() {
  List<int> numbers = [];
  for (int i = 0; i < 10; i++) {
    numbers.add(int.parse(stdin.readLineSync()!));
  }
  for (int i = numbers.length; i >= 0; i--) {
    print(i);
  }
}
