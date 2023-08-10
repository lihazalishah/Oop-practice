import '../student.dart';

enum ShapeType { Circle, Triangle, Rectangle }

//intewrface
abstract class Shape {
  //factory constructor
  factory Shape(ShapeType type) {
    switch (type) {
      case ShapeType.Circle:
        return Circle(); //here factory construtor return sub class circle
      case ShapeType.Triangle:
        return Triangle(); //here factory construtor return sub class Triangle
      case ShapeType.Rectangle:
        return Rectangle(); //here factory construtor return sub class Rectangle

      default:
        throw 'invalid shape type';
    }
  }
  //method
  void draw();
}

class Circle implements Shape {
  @override
  void draw() {
    print('Circle drawed!!');
  }
}

class Triangle implements Shape {
  @override
  void draw() {
    print('Triangle drawed!!');
  }
}

class Rectangle implements Shape {
  @override
  void draw() {
    print('Rectangle drawed!!');
  }
}

void main(List<String> args) {
  Shape shape = Shape(ShapeType.Rectangle);
  shape.draw();

  //list ofv shapes
  List<Shape> shapes = [];
  shapes.add(Shape(ShapeType.Triangle));
  shapes.add(Shape(ShapeType.Rectangle));
  shapes.add(Shape(ShapeType.Circle));

  for (Shape i in shapes) {
    // print list
    i.draw();
  }
}
