// ignore_for_file: unused_import

import 'dart:io';
import 'dart:math';

import 'person.dart';

void main() {
  Person p1 = new Person();
  p1.id = 12345;
  p1.name = 'LIHAZ ALI SHAH';
  p1.address = 'karachi pakistan';
  p1.display();
}

class Student {
  // student detail
  String? name;
  double? age;
  String? grade;
  dynamic display() {
    print(
        "name of student is $name\n Age od student is $age\n grade of student id $grade");
  }
}




// void main() {  // Area of shapes
//   int num;
//   do {
//     print(
//         "Area of different shape \n For circle press 1 \n for triangle press 2 \n for rectanle press 3 \n for quit press 0");
//     num = int.parse(stdin.readLineSync()!);
//     switch (num) {
//       case 1:
//         print("Enter radius of Circle");
//         int radius = int.parse(stdin.readLineSync()!);
//         circle(radius);
//         break;
//       case 2:
//         print("Enter base of triangle");
//         int base = int.parse(stdin.readLineSync()!);
//         print("Enter height of triangle");
//         int height = int.parse(stdin.readLineSync()!);
//         triangle(base, height);
//         break;
//       case 3:
//         print("Enter lenght of Rectangle");
//         int length = int.parse(stdin.readLineSync()!);
//         print("Enter width of Rectangle ");
//         int width = int.parse(stdin.readLineSync()!);
//         rectangle(length, width);
//         break;
//       default:
//         print("invalid input");
//         break;
//     }
//   } while (num != 0);
// }

// dynamic circle(radius) {
//   //Area of circle
//   var Area = 3.142 * (radius * radius);
//   print("Area of circle is $Area sq.units having radius $radius");
// }

// dynamic triangle(base, height) {
//   //Area of triangle
//   var Area = (0.5) * (base * height);
//   print("Area of triangle is $Area cm^2 having base $base and height $height");
// }

// dynamic rectangle(length, width) {
//   //Area of triangle
//   var Area = length * width;
//   print(
//       "Area of rectangle is $Area cm^3 having length $length and width $width");
// }

















// void main() {
//   // number is perfect square or not using do while loop
//   int num;
//   do {
//     print("Enter a number , if you want to quit presss-1");
//     num = int.parse(stdin.readLineSync()!);

//     if (num <= 0) {
//       print("inVaild input");
//     } else if (isPerfectSquare(num)) {
//       print("$num is perfect square");
//     } else {
//       print("$num is not perfect square");
//     }
//   } while (num != -1);
// }

// bool isPerfectSquare(int num) {
//   int sqrtOfnum = sqrt(num).toInt();
//   return sqrtOfnum * sqrtOfnum == num;
// }
