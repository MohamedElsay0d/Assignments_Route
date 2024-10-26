import 'dart:io';

void main() {
  List vowels = ['a', 'e', 'i', 'o', 'u'];
  stdout.write('Enter a character : ');
  String character = stdin.readLineSync()!;
  if (vowels.contains(character)) {
    print('The alphabet is a vowel');
  } else {
    print('The alphabet is a consonant');
  }
}
