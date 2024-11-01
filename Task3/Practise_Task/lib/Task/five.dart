void BubbleSort(List<int> numbers) {
  for (int i = numbers.length - 1; i >= 0; i--) {
    for (int j = 0; j < i; j++) {
      if (numbers[j] > numbers[j + 1]) {
        int temp = numbers[j];
        numbers[j] = numbers[j + 1];
        numbers[j + 1] = temp;
      }
    }
  }
}

void main() {
  List<int> numbers = [1, 0, 3, 6, 2, 5];
  BubbleSort(numbers);
  print('Sorted numbers: $numbers');
}
