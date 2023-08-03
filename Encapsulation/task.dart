import 'dart:ffi';

class University {
  //privtae properties
  String? _name;
  int? _year;

  //setter

  set name(String n) => this._name = n;
  set year(int y) {
    if (y >= 1900 && y <= 2023) {
      this._year = y;
    } else {
      throw Exception('Year value not in b/w 1900 and 2023');
    }
  }

  ////display
  void display() {
    print('University name ${_name}\nYear ${_year}');
  }
}
