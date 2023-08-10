// sometime we only use mixin with specific class for that purpose we use on keyword in mixin

abstract class Animals {
  ///properties
  String name;
  double speed;

//constructor
  Animals(this.name, this.speed);

//methods
  void run();
}

mixin canRun on Animals {
  @override
  void run() {
    print('$name is running at speed $speed');
  }
}

class Cat extends Animals with canRun {
  Cat(super.name, super.speed);
}

void main(List<String> args) {
  Cat cat = Cat('meaoo', 12.3);
  cat.run();
}
