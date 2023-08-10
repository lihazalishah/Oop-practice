mixin CanFly {
  void fly() {
    print('flying');
  }
}
mixin Both {
  void fly() {
    print('fly');
  }

  void walk() {
    print('walk');
  }
}
mixin CanWalk {
  void walk() {
    print('Walking\n');
  }
}

class Bird with CanWalk, CanFly, Both {} // bird can walk and fly both

class Human with CanWalk {} // human can walk but not fly

void main(List<String> args) {
  // Human human = Human();
  // human.walk();
  Bird bird = Bird();
  bird.fly();
  bird.walk();
}
