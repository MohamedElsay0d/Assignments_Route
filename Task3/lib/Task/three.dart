void main() {
  List<int> numbers = [1, 9, 0, 5, 4, 2];
  if (numbers.length < 2) {
    return null;
  }

  int smallest = numbers[0];
  int secondSmallest = numbers[1];

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] < smallest) {
      secondSmallest = smallest;
      smallest = numbers[i];
    } else if (numbers[i] > smallest && numbers[i] < secondSmallest) {
      secondSmallest = numbers[i];
    }
  }
  print(secondSmallest);
}
