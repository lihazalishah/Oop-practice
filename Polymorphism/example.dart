//ploymorphism by method overriding
//parent and child have same  name of show method
// but wan we create child obj and call obj.Start its call child method not parent its called method overrding(run time poly)
class Car {
  void Start() {
    print('Car run on petrol');
  }
}

class Honda extends Car {}

class Tesla extends Car {
  @override
  void Start() {
    print('Tesla run on electricty');
  }
}

void main() {
  Car car = Car();
  car.Start();
  Tesla tesla = Tesla();
  tesla.Start();
}
