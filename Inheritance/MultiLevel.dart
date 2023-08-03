//Muliti-level inheritance
class Car {
  // parent
//properties
  String? color;
  int? year;

  void start() {
    print('Car is running');
  }

  Car({this.color, this.year});
}

class Tyota extends Car {
  //child
  //property
  int? prize;

  Tyota({super.color, super.year, this.prize});
}

class Model extends Tyota {
  //Grand Child
  //property
  String? model;
  //constructor
  Model({super.color, super.year, super.prize, this.model});
  //Method
  void displayDetail() {
    super.start();
    print('Model : $model\nColor : $color\nYear : $year\nPrize : $prize');
  }
}

void main(List<String> args) {
  Model tyota =
      Model(color: 'Blue', year: 2001, model: 'FS213', prize: 2390000);
  tyota.displayDetail();
}
