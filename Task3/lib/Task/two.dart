void main() {
  List<int> numbers = [1, 9, 0, 5, 4, 2];
  double average;
  int sum = 0;
  for (int i = 0; i < numbers.length; i++) {
    sum += numbers[i];
  }
  average = sum / numbers.length;
  print(average);
}
