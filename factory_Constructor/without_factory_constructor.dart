class Area {
  final int length;
  final int breadth;
  final int area;

  const Area(this.length, this.breadth) : area = length * breadth;
}

void main(List<String> args) {
  Area area1 = const Area(23, 2);
  print('Area1 is ${area1.area}');
  Area area2 = const Area(23, -2);

  print('Area2 is ${area2.area}');
}
