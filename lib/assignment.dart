class BankAccount {
  final String accountHolder;
  double balance;

  BankAccount(this.accountHolder, this.balance);

  void deposit(double amount){
    balance += amount;
    print('Deposited amount:\$${amount}, New balance: \$${balance}');
  }

  void displayInfo(){
    print('Account Holder name: $accountHolder, Balance: \$${balance}');
  }
}

class SavingsAccount extends BankAccount {
  double interestRate;

  SavingsAccount(this.interestRate, super.accountHolder, super.balance);

  void addInterest(){
    double interest = balance * interestRate;
    balance += interest;
    print('Interest added: \$${interest}, New balance: \$${balance}');
  }
} 

void main(){
  final SavingsAccount aayuska = SavingsAccount(0.05, 'Aayuska', 1000);
  aayuska.displayInfo();
  aayuska.deposit(500);
  aayuska.addInterest();
  aayuska.displayInfo(); 
}