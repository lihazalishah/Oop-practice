class Person {
  String? name;
  int? age;

  void displayPersonInfo() {
    print('person name :$name\nperson age : $age');
  }
}

class Student extends Person {
  String? schoolName;
  String? schoolAddress;
  void SchoolInfo() {
    super.displayPersonInfo();
    print('School name :$schoolName\nschool Adress :$schoolAddress');
  }
}

void main() {
  Student student1 = Student();
  student1.name = 'lihaz';
  student1.age = 23;
  student1.schoolName = 'Uok';
  student1.schoolAddress = 'university road';
  student1.SchoolInfo();
}
