class PERSON {
  String Fname;
  String Lname;
  String Fullname;

  PERSON(this.Fname, this.Lname) : Fullname = Fname + ' ' + Lname;

  factory PERSON.fromMap(Map<String, dynamic> map) {
    final firstname = map['FirstName'].toString();
    final lastname = map['LastName'].toString();
    return PERSON(firstname, lastname);
  }
}

void main(List<String> args) {
  PERSON person = PERSON.fromMap({'FirstName': 'ali', 'LastName': 'khan'});
  print(person.Fullname);
}
