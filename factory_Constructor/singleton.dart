//singleton is design pattern have only one instance and provide goble point to access it
//create by defining factory contructor that alway return same instance

//signleton using dart factory constructor
class Singleton {
  //static variable
  static final Singleton _instance = Singleton._internal();

  //factory constructor
  factory Singleton() {
    return _instance;
  }

  //private constructor
  Singleton._internal();
  //here we can not call singleton._internal() out side the library because its private (dart library level private)
  //// but factory contructor return this private constructor
}

void main(List<String> args) {
  Singleton s1 = Singleton();
  Singleton s2 = Singleton();

  print(s1.hashCode);
  print(s2.hashCode);
}
//output (both obj return same hashcode because we are pointing at same instance)
//240854336
//240854336
