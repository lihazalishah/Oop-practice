class Person {
  //properties
  final String name;
  // private constructor
  Person._internal(this.name);

  //static final map
  static final Map<String, Person> _cache = {};

//factory constructor
  factory Person(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name]!;
    } else {
      final person = Person._internal(name);
      _cache[name] = person;
      return _cache[name]!;
    }
  }
}

void main(List<String> args) {
  final person1 = Person('ALI');
  final person2 = Person('KHAN');
  final person3 = Person('ALI');
  final person4 = Person('ALI');

  print('PERSON1 NAME IS : ${person1.name} with hashcode ${person1.hashCode}');
  print('PERSON2 NAME IS : ${person2.name} with hashcode ${person2.hashCode}');
  print('PERSON3 NAME IS : ${person3.name} with hashcode ${person3.hashCode}');
  print('PERSON4 NAME IS : ${person4.name} with hashcode ${person4.hashCode}');
}
//output
/*PERSON1 NAME IS : ALI with hashcode 21287624
PERSON2 NAME IS : KHAN with hashcode 877077592
PERSON3 NAME IS : ALI with hashcode 21287624
PERSON4 NAME IS : ALI with hashcode 21287624 */

///here we notice that person1,person3,person4 has same hashcode fro same name but person2 has different because of differnt name
///factory constructor check key exist in map or not if exist return value otherwise create then return