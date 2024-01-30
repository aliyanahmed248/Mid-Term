class BankAccount {
  int accountNumber;
  double balance;
  String accountType;
  double interestRate;

  BankAccount(this.accountNumber, this.balance, this.accountType, this.interestRate);

  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
    } else {
      print('Insufficient balance');
    }
  }

  void addInterest() {
    balance += (balance * interestRate);
  }

  void display() {
    print('Account Number: $accountNumber, Balance: $balance, Account Type: $accountType, Interest Rate: $interestRate');
  }
}

class Student {
  String name;
  String id;
  List<String> courses;

  Student(this.name, this.id, this.courses);

  void addCourse(String course) {
    courses.add(course);
  }

  void dropCourse(String course) {
    courses.remove(course);
  }

  void displayCourses() {
    print('Courses: $courses');
  }
}

void main() {
  BankAccount bankAccount1 = BankAccount(123456, 5000.0, 'Savings', 0.02);
  bankAccount1.deposit(500.0);
  bankAccount1.withdraw(1000.0);
  bankAccount1.addInterest();
  bankAccount1.display();

  Student student1 = Student('Aliyan Ahmed', '001', ['Islamiat', 'Science']);
  student1.addCourse('English');
  student1.dropCourse('Science');
  student1.displayCourses();
}
