enum Gender { Male, Female, Others }

class Person {
  String name;
  Gender gender;

  Person(this.name, this.gender);
  void display() {
    print('Name is : $name\nGender : ${gender}');
  }
}

void main(List<String> args) {
  Person p1 = Person('ALI', Gender.Male);

  p1.display();
}
