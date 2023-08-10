class Employee {
  static int count = 0;
  Employee() {
    count++;
  }
  void display() {
    print('Total number of Employees is : ${Employee.count}');
  }
}

void main() {
  Employee e1 = Employee();
  Employee e2 = Employee();
  Employee e3 = Employee();
  Employee.count = 67;
  Employee e4 = Employee();

  e2.display();
}
