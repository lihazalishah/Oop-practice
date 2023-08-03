// Hierarchical inheritacnce

class Person {
  //parent class inheritaed by mulitlpe sub classes
  String? name;
  int? age;

  Person(this.name, this.age);
}

class Student extends Person {
  ///child1
  int? rollnumber;
  String? standard;

  Student({name, age, required this.rollnumber, required this.standard})
      : super(age, name);
  void displayStudent() {
    print(
        'Student Details\nName : $name\nAge : $age\nRollNum : $rollnumber\nclass : $standard\n=-------=');
  }
}

class Employee extends Person {
  // child2
  String? id;
  String? CompanyName;
  double? salary;
  Employee(
      {required name,
      required age,
      required this.id,
      required this.CompanyName,
      this.salary})
      : super(age, name);
  void displayEmployee() {
    print(
        'Employee details\nName : $name\nAge : $age\nId : $id\nComapny : $CompanyName\nSalary : $salary\n=--------=');
  }
}

void main(List<String> args) {
  Student student =
      Student(name: 'LIHAZ', age: 23, rollnumber: 10023, standard: '6TH');
  student.displayStudent();
  Employee employee = Employee(
      name: 'Ali',
      age: 34,
      id: 'cgss-23',
      CompanyName: 'ABCD COMPANY',
      salary: 23400.9);
  employee.displayEmployee();
}
