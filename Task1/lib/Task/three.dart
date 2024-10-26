import 'dart:io';

void main() {
  stdout.write('Enter Your Age : ');
  int number = int.parse(stdin.readLineSync()!);
  if (number >= 21) {
    print('Congratulation! You are eligible for casting your vote');
  } else {
    print(
        'Sorry, you are not eligible. You must be at least 21 years old to cast your vote');
  }
}
