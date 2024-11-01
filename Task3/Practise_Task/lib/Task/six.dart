void OptimizedBubbleSort(List<int> numbers) {
  int n = numbers.length;
  bool swapped;
  for (int i = 0; i < n - 1; i++) {
    swapped = false;
    for (int j = 0; j < n - i - 1; j++) {
      if (numbers[j] > numbers[j + 1]) {
        int temp = numbers[j];
        numbers[j] = numbers[j + 1];
        numbers[j + 1] = temp;
        swapped = true;
      }
    }
    if (!swapped) {
      break;
    }
  }
}

void main() {
  List<int> numbers = [1, 0, 3, 6, 2, 5];
  print('Original array: $numbers');

  OptimizedBubbleSort(numbers);

  print('Sorted array: $numbers');
}
