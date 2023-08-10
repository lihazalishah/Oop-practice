// interface define using class or abstract class , no keyword of interface support dart
// use implement  instead of extends to implement interface to onther class
// use to perform Abstraction in dart
abstract class PERSON {
  String? name;
  void walk();
  void Run();
}

class Student implements PERSON {
  // implement show person is interface
  @override
  String? name;
  //CONSTRUCTOR
  Student(this.name);
  @override
  void Run() {
    print('$name is Runnning');
  }

  @override
  void walk() {
    print('$name is Walking');
  }
}

void main(List<String> args) {
  Student student = Student('Ali');
  student.Run();
  student.walk();
}
