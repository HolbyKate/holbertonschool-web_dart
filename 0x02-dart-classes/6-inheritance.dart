//Adding user class that inherit from password with import

import '6-password.dart';

class User extends Password {
  final int? id;
  final String? name;
  final int? age;
  final double? height;
  String? _userPassword;

  User({this.id, this.name, this.age, this.height, String? user_password})
      : _userPassword = user_password,
        super(password: user_password ?? "");

  // Getter for user_password
  String? get user_password => _userPassword;

  // Setter for user_password
  set user_password(String? value) {
    _userPassword = value;
    if (value != null) {
      super.password = value;
    }
  }

  // Factory constructor to create User from JSON
  factory User.fromJson(Map<dynamic, dynamic> json) {
    return User(
      id: json['id'] as int?,
      name: json['name'] as String?,
      age: json['age'] as int?,
      height: json['height'] as double?,
      user_password: json['user_password'] as String?,
    );
  }

  // Method to convert User to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  @override
  String toString() {
    return 'User(id : $id ,name: $name, age: $age, height: $height, Password: ${isValid()})';
  }
}
