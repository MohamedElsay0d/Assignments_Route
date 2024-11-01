void CountGeneral(List<int> numbers) {
  Map<int, int> countMap = {};

  for (int number in numbers) {
    if (countMap.containsKey(number)) {
      countMap[number] = countMap[number]! + 1;
    } else {
      countMap[number] = 1;
    }
  }
  countMap.forEach((key, value) {
    print('The number $key occurs: $value times');
  });
}

void main() {
  List<int> numbers = [1, 2, 3, 1, 3, 6];
  CountGeneral(numbers);
}
