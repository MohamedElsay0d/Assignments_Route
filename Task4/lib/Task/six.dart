import 'dart:io';

void main() {
  Map<int, int> counts = {};

  print("Enter the integers between 1 and 100 (0 to end): ");
  while (true) {
    int num = int.parse(stdin.readLineSync()!);
    if (num == 0) break;
    if (num >= 1 && num <= 100) {
      counts[num] = (counts[num] ?? 0) + 1;
    }
  }

  for (var entry in counts.entries) {
    print(
        "${entry.key} occurs ${entry.value} ${entry.value > 1 ? 'times' : 'time'}");
  }
}
