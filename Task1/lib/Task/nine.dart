import 'dart:io';
import 'dart:math';

void main() {
  stdout.write('Enter the radius and length of a cylinder: ');

  double radius = double.parse(stdin.readLineSync()!);
  double length = double.parse(stdin.readLineSync()!);

  double area = pi * pow(radius, 2);
  double volume = area * length;

  print('The area is: ${area.toStringAsFixed(4)}');
  print('The volume is: ${volume.toStringAsFixed(1)}');
}
