// copy class password from task 4 to create new one

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

  // Change Method to check if the password is valid more concise
  bool isValid() {
    if (_password.isEmpty) return false;
    if (_password.length < 8 || _password.length > 16) return false;

    bool hasUpperCase = _password.contains(RegExp(r'[A-Z]'));
    bool hasLowerCase = _password.contains(RegExp(r'[a-z]'));
    bool hasNumbers = _password.contains(RegExp(r'[0-9]'));

    return hasUpperCase && hasLowerCase && hasNumbers;
  }

  @override
  String toString() {
    return "Your Password is: $_password";
  }
}
