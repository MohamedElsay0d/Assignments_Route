int CalculateEven(List<int> numbers) {
  int sum = 0;

  for (int number in numbers) {
    if (number % 2 == 0) {
      sum += number;
    }
  }

  return sum;
}

void main() {
  List<int> numbers = [1, 4, 2, 5, -1, 8];
  print('The sum of even numbers is: ${CalculateEven(numbers)}');
}
