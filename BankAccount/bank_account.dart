class BankAccount {
  BankAccount(double balance) {
    this.balance = balance;
  }
  double balance = 0;

  void deposit(double amount) {
    balance += amount;
  }

  bool withdraw(double amount) {
    if (balance > amount) {
      balance -= amount;
      return true;
    } else {
      return false;
    }
  }
}

void main() {
  final bankAccount = BankAccount(100);
  print(bankAccount);
  bankAccount.deposit(100);
  bankAccount.deposit(50);
  final success1 = bankAccount.withdraw(100);
  print('success: $success1, balance: ${bankAccount.balance}');
  final success2 = bankAccount.withdraw(100);
  print('success: $success2, balance: ${bankAccount.balance}');
}
