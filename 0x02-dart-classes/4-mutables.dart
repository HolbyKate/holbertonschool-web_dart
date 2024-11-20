// Adding setter and getter

class Password {
  String _password;

  // Constructor
  Password({required String password}) : _password = password;

  // Get method
  String getPassword() {
    return _password;
  }

  // Set method
  set password(String newPassword) {
    _password = newPassword;
  }

  // Method to check if the password is valid
  bool isValid() {
    if (_password.length < 8 || _password.length > 16) {
      return false;
    }

    // Check uppercase letters
    bool hasUpperCase = _password.contains(RegExp(r'[A-Z]'));
    if (!hasUpperCase) {
      return false;
    }

    // Check lowercase letters
    bool hasLowerCase = _password.contains(RegExp(r'[a-z]'));
    if (!hasLowerCase) {
      return false;
    }

    // Check numbers
    bool hasNumbers = _password.contains(RegExp(r'[0-9]'));
    if (!hasNumbers) {
      return false;
    }
    return true;
  }

  @override
  String toString() {
    return "Your Password is: $_password";
  }
}

