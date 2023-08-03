class BankAccount {
  //private properties
  double? _balance = 0.0;

  double get balance => this._balance!;

  void deposit(double amount) {
    if (amount > 0) {
      this._balance = amount + _balance!;
    } else {
      throw Exception('Amount must be greater then 0');
    }
  }

  bool Widthdraw(double amount) {
    if (balance >= amount) {
      this._balance = this._balance! - amount;
      return true;
    } else {
      throw Exception('Not suffecient amount for widthdraw!!');
    }
  }
}

void main() {
  BankAccount LihazAccount = BankAccount();
  print('Blance before deposit ${LihazAccount.balance}');
  LihazAccount.deposit(400);
  print('Balance after deposit ${LihazAccount.balance}');
  LihazAccount.Widthdraw(100);
  print('Blance after Widthdraw ${LihazAccount.balance}');
  LihazAccount.Widthdraw(100);
  print('Blance after 2nd Widthdraw ${LihazAccount.balance}');
  LihazAccount.Widthdraw(100);
  print('Blance after 3rd Widthdraw ${LihazAccount.balance}');
  LihazAccount.Widthdraw(100);
  print('Blance after 4th Widthdraw ${LihazAccount.balance}');
  LihazAccount.Widthdraw(100);
  print('Blance after 5th Widthdraw ${LihazAccount.balance}');
}
