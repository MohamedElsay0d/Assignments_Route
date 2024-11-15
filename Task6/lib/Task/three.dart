abstract class Shape {
  double getArea();
  @override
  String toString() {
    return "Area: ${getArea()}";
  }
}

class Rectangle extends Shape {
  double length;
  double width;

  Rectangle(this.length, this.width);

  @override
  double getArea() {
    return length * width;
  }

  @override
  String toString() {
    return 'Rectangle: length = $length, width = $width, area = ${getArea()}';
  }
}

class Triangle extends Shape {
  double baseLength;
  double height;

  Triangle(this.baseLength, this.height);

  @override
  double getArea() {
    return 0.5 * baseLength * height;
  }

  @override
  String toString() {
    return 'Triangle: baseLength = $baseLength, height = $height, area = ${getArea()}';
  }
}

void main() {
  Shape rectangle = Rectangle(5.0, 3.0);
  print('Rectangle area: ${rectangle.getArea()}');

  Shape triangle = Triangle(4.0, 6.0);
  print('Triangle area: ${triangle.getArea()}');
}
