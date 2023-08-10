enum Days { Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday }

void main() {
  Days day = Days.Friday;

  print('$day\n=========');

  List<Days> days = Days.values;

  print('$days\n');

  for (Days days in Days.values) {
    print(days);
  }
}
