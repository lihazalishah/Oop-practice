class parent {
  String? name;
  int? age;
/*//01
  parent(this.name);//parameter const */
//Named parameter
  //02
  parent({this.name, this.age});
  parent.named(this.name) {
    this.age = 23;
  }
}

class child extends parent {
  /* 
  //01
   child(super.name);
 //or
  // child(name) : super(name);*/
  //02
  child({nam, age}) : super(name: nam, age: age);
  child.named(name) : super.named(name);
  void display() {
    print('name is :$name\nage :$age');
  }
}

void main(List<String> args) {
  child a = child(nam: 'unnamed', age: 34);
  child C = child.named('ALI');
  a.display();
  C.display();
}
