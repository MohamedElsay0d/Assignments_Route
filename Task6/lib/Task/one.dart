import 'dart:math';

class GeometricObject {
  String color;
  bool filled;

  GeometricObject({this.color = "white", this.filled = false});

  @override
  String toString() {
    return "color: $color, filled: $filled";
  }
}

class Triangle extends GeometricObject {
  double side1;
  double side2;
  double side3;

  Triangle({
    this.side1 = 1.0,
    this.side2 = 1.0,
    this.side3 = 1.0,
    String color = "white",
    bool filled = false,
  }) : super(color: color, filled: filled);

  double getArea() {
    double s = getPerimeter() / 2;
    return sqrt(s * (s - side1) * (s - side2) * (s - side3));
  }

  double getPerimeter() {
    return side1 + side2 + side3;
  }

  @override
  String toString() {
    return 'Triangle: side1 = $side1, side2 = $side2, side3 = $side3, color = $color, filled = $filled';
  }
}

class Rectangle extends GeometricObject {
  double height;
  double width;

  Rectangle({
    this.height = 1.0,
    this.width = 1.0,
    String color = "white",
    bool filled = false,
  }) : super(color: color, filled: filled);

  double getArea() {
    return height * width;
  }

  double getPerimeter() {
    return 2 * (height + width);
  }

  @override
  String toString() {
    return 'Rectangle: height = $height, width = $width, color = $color, filled = $filled';
  }
}

void main() {
  Triangle triangle = Triangle(
      side1: 2.0, side2: 3.0, side3: 4.0, color: "black", filled: true);
  print(triangle);
  print("Area of Triangle: ${triangle.getArea()}");
  print("Perimeter of Triangle: ${triangle.getPerimeter()}");

  Rectangle rectangle =
      Rectangle(width: 5.0, height: 3.0, color: "blue", filled: false);
  print(rectangle);
  print("Area of Rectangle: ${rectangle.getArea()}");
  print("Perimeter of Rectangle: ${rectangle.getPerimeter()}");
}
