int count2(List<int> numbers) {
  int count = 0;

  for (int number in numbers) {
    if (number == 2) {
      count++;
    }
  }

  return count;
}

void main() {
  List<int> numbers = [1, 5, 2, 2, 5, 2];
  print('The number 2 occurs: ${count2(numbers)} times');
}
