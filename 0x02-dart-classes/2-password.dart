// Create a class called Password and give it a string property called password

class Password {
  String password = "";

  // Constructor
  Password();

  // Method to check if the password is valid
  bool isValid() {
    if (password.length < 8 || password.length > 16) {
      return false;
    }

    // Check uppercase letters
    bool hasUpperCase = password.contains(RegExp(r'[A-Z]'));
    if (!hasUpperCase) {
      return false;
    }

    // Check lowercase letters
    bool hasLowerCase = password.contains(RegExp(r'[a-z]'));
    if (!hasLowerCase) {
      return false;
    }

    // Check numbers
    bool hasNumbers = password.contains(RegExp(r'[0-9]'));
    if (!hasNumbers) {
      return false;
    }
      return true;
  }
  @override
  String toString() {
    return "Your Password is: $password";
  }
}
