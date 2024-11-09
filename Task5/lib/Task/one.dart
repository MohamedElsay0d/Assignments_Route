class BankAccount {
  String accountID;
  double balance;

  BankAccount(this.accountID, this.balance);

  BankAccount.noArgs(this.accountID) : balance = 0;

  bool withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
      return true;
    } else {
      print("Insufficient funds.");
      return false;
    }
  }

  void deposit(double amount) {
    balance += amount;
  }

  double getBalance() {
    return balance;
  }

  String getAccountID() {
    return accountID;
  }
}

void main() {
  BankAccount account1 = BankAccount("123456", 1500);

  account1.deposit(800);
  print(
      "Account ID: ${account1.getAccountID()}, Balance: ${account1.getBalance()}");

  if (account1.withdraw(200)) {
    print("Withdrawal successful.");
  } else {
    print("Withdrawal failed.");
  }
  print(
      "Account ID: ${account1.getAccountID()}, Balance: ${account1.getBalance()}");
}
