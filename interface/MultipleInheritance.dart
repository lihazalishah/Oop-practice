// we can achieve multiplr inheritance using interfaces
// Multiple inheritance mean a  class inherited from more then one class//
// using extends keyword  its not possible , but possible with implements keywords

abstract class Area {
  void area();
}

abstract class Preimeter {
  void preimeter();
}

class Rectangle implements Area, Preimeter {
  //properties
  double length;
  double Breadth;
// constructor
  Rectangle(this.length, this.Breadth);

  @override
  void area() {
    print('Area of Rectangl is ${length * Breadth}');
  }

  @override
  void preimeter() {
    print('Preimeter of Rectangl is ${2 * (length * Breadth)}');
  }
}

void main(List<String> args) {
  Rectangle r = Rectangle(100, 70);
  r.area();
  r.preimeter();
}
