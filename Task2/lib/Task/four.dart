import 'dart:io';

void main() {
  stdout.write("How many Number you want to check ?");
  int number = int.parse(stdin.readLineSync()!);
  int variable = 0;
  int positive = 0;
  int negative = 0;
  int zero = 0;
  for (int i = 1; i <= number; i++) {
    variable = int.parse(stdin.readLineSync()!);
    if (variable > 0) {
      positive++;
    } else if (variable < 0) {
      negative++;
    } else {
      zero++;
    }
  }
  print(
      "You Entered $positive postive numbers , $negative negative and $zero Zero");
}
