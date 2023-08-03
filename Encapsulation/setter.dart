class Book1 {
  //private properties
  String? _name;
  double? _prize;

  //setter
  set setBookName(String n) => this._name = n;
  set setBookPrice(double p) {
    if (p <= 0) {
      this._prize = 100;
    } else {
      this._prize = p;
    }
  }

  void display() {
    print('book name : $_name \nBookPrice : $_prize');
  }
}
