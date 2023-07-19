class Person {
  //class of person
  //properties
  int? id;
  String? name;
  String? address;
  double? age;
// methods
  void display() {
    print(' id : $id\n name : $name\n age : $age\n address : $address');
  }
}

dynamic PersonObjFun() {
  Person p1 = Person(); // object of person class
  p1.id = 12345;
  p1.name = 'LIHAZ ALI SHAH';
  p1.address = 'karachi pakistan';
  p1.age = 23;
  p1.display();

  return p1;
}

class Camera {
  // take: create class camera with properties name,mp,colors and method display
  String? name;
  String? color;
  int? megapixel;

  void display() {
    print(' Camera name : $name\n color : $color\n megapixel : $megapixel');
  }
}

dynamic CameraObjFun() {
  // function for creating objects of camera
  Camera c1 = Camera();
  c1.name = 'sony';
  c1.color = 'black';
  c1.megapixel = 50;
  c1.display();

  Camera c2 = Camera();
  c2.name = 'DSLR';
  c2.color = 'Grey';
  c2.megapixel = 100;
  c2.display();

  return {c1, c2};
}

//constructor

class Man {
  int? age;
  String? name;

  // Man(int a, String n) {
  //   this.name = n;
  //   this.age = a;
  // }

  Man(this.age, this.name); // single line constructor both work same

  void display() {
    print(" name  : ${this.name}\n agr : ${this.age}");
  }
}

void main() {
  Man m1 = Man(23, 'khan');
  m1.display();
}
