import 'dart:math';

class PasswordGenerator {
  static String generateRamdomPassword() {
    List<String> allCapitalalphabets = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'.split('');

    List<String> allSmallalphabets = 'abcdefghijklmnopqrstuvwxyz'.split('');
    List<int> allNumber = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    List<String> specialCharacter = ['@', '-', '*', '&', '%', '#'];
    List<String> password = [];
    for (var i = 0; i < 2; i++) {
      password.add(
          allCapitalalphabets[Random().nextInt(allCapitalalphabets.length)]);
      password
          .add(allSmallalphabets[Random().nextInt(allSmallalphabets.length)]);
      password.add(allNumber[Random().nextInt(allNumber.length)].toString());
      password.add(specialCharacter[Random().nextInt(specialCharacter.length)]);
    }
    return password.join();
  }
}

void main(List<String> args) {
  String p1 = PasswordGenerator.generateRamdomPassword();
  // String p2 = PasswordGenerator.generateRamdomPassword();
  // String p3 = PasswordGenerator.generateRamdomPassword();

  print('$p1\n');
}

// this code generate random passsward of length 8(four different type loop run 2 time)
