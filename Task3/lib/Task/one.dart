import 'dart:io';

void main() {
  List<int> numbers = [8, 0, 1, 0];
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] == 0) {
      print("Yes");
      break;
    }
  }
}
