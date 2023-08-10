//for abstract class use Abstract keyword
//we can not define obj of abstract class
//abstract class has abstract method
// abstract method has no body//
// for use of abstract class we need to inherit to subcalss
// in subclass we also need to create all abstract method define in abstract class

abstract class Shape {
  int? x;
  int? y;

  //constructor
  Shape({this.x, this.y});

  //abstract method
  void area();
}

class Rectangle extends Shape {
  //constructor
  Rectangle(int a, int b) : super(x: a, y: b);

  @override
  void area() {
    print('Area of Rectangle is : ${x! * y!}');
  }
}

class Triangle extends Shape {
  //constructor
  Triangle(int a, int b) : super(x: a, y: b);

  @override
  void area() {
    print('Area of Triangle is : ${0.5 * x! * y!}');
  }
}

void main(List<String> args) {
  Rectangle rectangle = Rectangle(2, 4);
  Triangle triangle = Triangle(3, 2);
  rectangle.area();
  triangle.area();
}
