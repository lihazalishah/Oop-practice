class AgeCalculator {
  static int calculator(int birthYear) {
    int age = DateTime.now().year - birthYear;
    return age;
  }
}

class SimpleIntrest {
  static double calculateIntrest(double principle, double rate, double time) {
    return (principle * rate * time) / 100;
  }
}

void main(List<String> args) {
  int age = AgeCalculator.calculator(2001);
  print('age is: $age\-----------');
  double intrest = SimpleIntrest.calculateIntrest(23, 0.3, 1);
  print('intrest is :$intrest\n----------');
}
