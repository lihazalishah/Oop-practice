class Book {
  //private properties
  String? _name;
  double? _prize;

  //getter

  String get getBookName => this._name!;
  double get getBookPrize => this._prize!;
  Book(this._name, this._prize);
}
