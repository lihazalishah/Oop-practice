//super keyword use to call parent class methods and properties

import 'dart:ffi';

class Student {
  String? name;
  void show() {
    print('Sutuent name  is : ${this.name}');
  }
}

class Course extends Student {
  String? subName;
  void show() {
    super.show();
    print('Subject is : ${this.subName}');
  }
}

void main() {
  Course course = Course();
  course.name = 'Ali';
  course.subName = 'Mathemathics';
  course.show();
}
