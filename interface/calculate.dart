// imterface multiple inheritence
abstract class CalculateTotal {
  int total();
  CalculateTotal() {
    print('Parent class/ interface constructir');
  }
}

abstract class CalculateAvg {
  double average();
}

class Student implements CalculateTotal, CalculateAvg {
  //properties
  int marks1, marks2, marks3;

  //constructor

  Student(this.marks1, this.marks2, this.marks3) {
    print('Child class construtoe');
  }
  @override
  double average() {
    return (marks1 + marks2 + marks3) / 3;
  }

  @override
  int total() {
    return marks1 + marks2 + marks3;
  }
}

void main(List<String> args) {
  Student student = Student(80, 90, 70);

  print(
      'Total marks is: ${student.total()}\nAvergae marks is : ${student.average()}');
}
