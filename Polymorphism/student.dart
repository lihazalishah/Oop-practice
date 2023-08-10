class Student {
  int? id;
  String? name;
  static String SchoolName = 'ABC School';

  Student(this.id, this.name);
  void display() {
    print(
        'Name odf student is :$name\nId of student : $id\nSchool of STUDENT ${Student.SchoolName}');
  }
}

void main(List<String> args) {
  Student student = Student(1, 'ALI');
  student.display();
}
