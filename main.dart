import 'person.dart';

void main() {
  Employee e1 = Employee();
  e1..setId = 34;
  e1.setname = 'lihaz';
  print(e1.getId);
  print(e1.getName);
  print(e1.getSchool);
}
