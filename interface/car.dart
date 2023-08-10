abstract class Vehical {
  void Start();
  void Stop();
}

class Car implements Vehical {
  @override
  void Start() {
    print('Car Started!!');
  }

  @override
  void Stop() {
    print('Car Stopped!!');
  }
}

void main(List<String> args) {
  Car car = Car();
  car.Start();
  car.Stop();
}
