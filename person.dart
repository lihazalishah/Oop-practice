import 'dart:convert';

class Person {
  //class of person
  //properties
  int? id;
  String? name;
  String? address;
  double? age;
// methods
  void display() {
    print(' id : $id\n name : $name\n age : $age\n address : $address');
  }
}

dynamic PersonObjFun() {
  Person p1 = Person(); // object of person class
  p1.id = 12345;
  p1.name = 'LIHAZ ALI SHAH';
  p1.address = 'karachi pakistan';
  p1.age = 23;
  p1.display();

  return p1;
}

class Camera {
  // take: create class camera with properties name,mp,colors and method display
  String? name;
  String? color;
  int? megapixel;

  void display() {
    print(' Camera name : $name\n color : $color\n megapixel : $megapixel');
  }
}

dynamic CameraObjFun() {
  // function for creating objects of camera
  Camera c1 = Camera();
  c1.name = 'sony';
  c1.color = 'black';
  c1.megapixel = 50;
  c1.display();

  Camera c2 = Camera();
  c2.name = 'DSLR';
  c2.color = 'Grey';
  c2.megapixel = 100;
  c2.display();

  return {c1, c2};
}

//constructor

class Man {
  int? age;
  String? name;

  // Man(int a, String n) {
  //   this.name = n;
  //   this.age = a;
  // }

  //Man(this.age, this.name); // single line constructor both work same

  // Man(this.age,
  //     [this.name = 'prince']); // constructor with optional parameter []
  //here name is optional if value not pass by user default value will assign
  //you can define multiple optional parameter in [] with values or not depend upon you.

  //constructor with named parametered
  Man({required this.age, required this.name});

  void display() {
    print(" name  : ${this.name}\n agr : ${this.age}");
  }
}

// define calss patient with 3 properties and constructor for initilize value create object of class and print value using object
class Patient {
  String? name;
  int? age;
  String? disease;

  Patient() {
    //default constructor
    print(
        'name : ${this.name = 'lihaz'} \nage :  ${this.age = 22} \ndisease :  ${this.disease = 'fever'}');
  }
}

//task create class of people with name and planet properties ,
//// create constructor and assign planet value , create obj and assign your name print all
class People {
  String? name;

  String? planet;

  People(this.name) {
    //default constructor
    print('name : ${name}  \nplanet :  ${this.planet = 'Earth'}');
  }
  // named construcrure
  People.more(this.name, this.planet) {
    print('name : ${name}  \nplanet :  ${this.planet}');
  }
}

class Student {
  //properties
  String? name;
  int? age;

//constructor
  Student(this.name, this.age);

// named constructor
  Student.fromJson(Map<String, dynamic> json) {
    // pass map(need to secode also)
    name = json['name'];
    age = json['age'];
  }
  Student.FromJsonString(String jsonString) {
    // pass string and decode in side
    Map<String, dynamic> json = jsonDecode(jsonString);
    name = json['name'];
    age = json['age'];
  }
}
//////// main method workcode
//  var jsondata = '{"name": "lihaz","age": 20}';
//   var response = jsonDecode(jsondata);
//   Student st1 = Student.fromJson(response);
//   print(st1.age);
//   print(st1.name);

//   var jsonString = '{"name":"Ali","age": 23}';
//   Student st2 = Student.FromJsonString(jsonString);
//   print(st2.name);

//task

class Car {
  //properties
  String? name;
  String? color;
  int? price;

//constructors
  Car({this.name, this.color, this.price});

  Car.favouriteFromJsonString(String jsondata) {
    Map<String, dynamic> json = jsonDecode(jsondata);
    name = json['name'];
    color = json['color'];
    price = json['price'];
  }

  void display() {
    print('Car name : ${name}\nColor  : ${color}\nprice : ${price}');
    print('------------------------------');
  }
}
//// main meth code
/*var jsonForm = '{"name":"BMW","color":"Blue","price":200000}';

  Car c1 = Car(name: 'civic', color: 'balck', price: 30000);
  c1.display();

  Car c2 = Car.favouriteFromJsonString(jsonForm);
  c2.display(); */

////const constructor
class Point {
  final int x;
  final int y;

  const Point(this.x, this.y);
}

// Point p1 = const Point(7, 4);
//   print('point p1 hash code is : ${p1.hashCode}');
//   Point p2 = const Point(7, 4);
//   print('point p2 hash code is : ${p2.hashCode}');

//   Point p3 = Point(3, 4);
//   print('point p3 hash code is : ${p3.hashCode}');
//   Point p4 = Point(3, 4);
//   print('point p4 hash code is : ${p4.hashCode}');

////output // const p1 p2 return same hashcode for similar point but non const p3 p4 return diff hashcode for smae point
///const keyward improve performance of program
/*point p1 hash code is : 253316793 
point p2 hash code is : 253316793
point p3 hash code is : 826180720
point p4 hash code is : 807459569 */

//task

class PERSON {
  final String? name;
  final int? rollNumber;
  final int? age;

  const PERSON({required this.name, this.rollNumber, this.age});
}

/*  PERSON p1 = const PERSON(name: 'Ali', rollNumber: 23, age: 20);
  print(
      'p1 hashcode : ${p1.hashCode} \nname : ${p1.name},\nage : ${p1.age}\nRollNum : ${p1.rollNumber}\n--------------');
  PERSON p2 = const PERSON(name: 'Ali', rollNumber: 23, age: 20);
  print(
      'p2 hashcode : ${p2.hashCode} \nname : ${p2.name},\nage : ${p2.age}\nRollNum : ${p2.rollNumber}\n--------------'); */
////output
///p1 hashcode : 273245569
// name : Ali,
// age : 20
// RollNum : 23
// --------------
// p2 hashcode : 273245569
// name : Ali,
// age : 20
// RollNum : 23
// --------------

////************** Encapsulation ********************////
class Employee {
  // properties underscore(_) mean private properties
  String? _name;
  int? _id;
  final String? _school = 'Abc school';
  // Employee(this._school); if final value not initialize

  // String getName() {
  //   //// getter method for access valuen of private properties
  //   return _name!;
  // }

  // int getId() {
  //   return _id!;
  // }

  // void setName(String name) {
  //   // setter method for set value of private properties
  //   this._name = name;
  // }

  // void setId(int id) {
  //   this._id = id;
  // }

//// create getter setter using get set key ward(get requires return type becaaause its return vslue but set never required return type)
////////getter
  String get getSchool => _school!;
  String get getName => _name!;
  int get getId => _id!;
  ////setter
  set setname(String name) => this._name = name;
  set setId(int id) => this._id = id;
}

void main() {
  var employee = Employee();

//// both code work beacuse private properties are library level not class level (below code not work in others languages supported Oop)
  // employee.setId(23);
  // employee.setName('Ali');
  // print('Name : ${employee.getName()}');
  // print('Id : ${employee.getId()}');
  employee.setId = 24;
  employee.setname = 'lihaz';
  print(employee.getId);
  print(employee.getName);

  // employee._id = 23;
  // employee._name = 'ALI';
  // print(employee._id);
  // print(employee._name);
}
