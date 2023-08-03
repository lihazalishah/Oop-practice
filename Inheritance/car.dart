class Car {
//properties
  String? color;
  int? year;

  void start() {
    print('Car is running');
  }

  Car({this.color, this.year});
}

class Tyota extends Car {
  String? model;
  int? prize;

  Tyota({super.color, super.year, this.model, this.prize});
  void displayDetail() {
    super.start();
    print('Model : $model\nColor : $color\nYear : $year\nPrize : $prize');
  }
}

void main(List<String> args) {
  Tyota tyota =
      Tyota(color: 'Blue', year: 2001, model: 'FS213', prize: 2390000);
  tyota.displayDetail();
}
