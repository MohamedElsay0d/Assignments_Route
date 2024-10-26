import 'dart:io';

void main() {
  stdout.write('Enter Your Grade : ');
  String grade = stdin.readLineSync()!;
  grade = grade.toUpperCase();
  switch (grade) {
    case 'A':
      print('Excellent');
      break;
    case 'B':
      print('Outstanding');
      break;
    case 'C':
      print('Good');
      break;
    case 'D':
      print('Can Do Better');
      break;
    case 'F':
      print('Failed!');
      break;
    default:
      print('Invalid Grade');
  }
}
