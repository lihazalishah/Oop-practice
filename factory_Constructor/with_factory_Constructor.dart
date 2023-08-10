class Area {
  final int length;
  final int breadth;
  final int area;

//positive constructor
  const Area._internal(this.length, this.breadth) : area = length * breadth;

  //factory constructor
  factory Area(int length, int breadth) {
    if (length < 0 || breadth < 0) {
      throw Exception('Length and breadth must be positive');
    } else {
      //redirected to positive constructor
      return Area._internal(length, breadth);
    }
  }
}

void main(List<String> args) {
  Area a1 = Area(23, 2);

  print(a1.area);
  Area a2 = Area(3, -2);
  print(a2.area);
}
