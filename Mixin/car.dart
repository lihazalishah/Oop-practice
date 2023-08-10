// used to share code in multiple classes
// no object created , not extended
// possible to use multiple mixin with one class
// with keyword used to apply mixin to a class
//create properties and static var in mixin
//create regular, ststic and abstract method in
mixin ElectricVariant {
  //properties
  int carnumber = 2345;
  //static property
  static int releaseYear = 2001;
  //abstract method
  void isNew();

  void electricVarient() {
    print('This is an electric varient');
  }
}

mixin PetrolVarient {
  void petrolVarient() {
    print('This is an petrol varient');
  }
}

class Tesla with ElectricVariant {
  @override
  void isNew() {
    print('Tesla is not in new comdition');
  }
}

class Hybird with ElectricVariant, PetrolVarient {
  @override
  void isNew() {
    print('Hybird is in new condition');
  }
}

void main(List<String> args) {
  Tesla t = Tesla();
  t.electricVarient();
  t.isNew();

  Hybird car = Hybird();
  car.electricVarient();
  car.petrolVarient();
  print(
      'car num ${car.carnumber}\nrelease year ${ElectricVariant.releaseYear}');
  car.isNew();
}
