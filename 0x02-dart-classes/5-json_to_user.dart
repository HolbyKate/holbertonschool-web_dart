// Create an user class with toJson method and add id property

class User {
  final int id;
  final String name;
  final int age;
  final double height;

  User({required this.id, required this.name, required this.age, required this.height});

  Map<String, dynamic> toJson() => {'name': name, 'age': age, 'height': height};
  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
        id: userJson['id'],
        name: userJson['name'],
        age: userJson['age'],
        height: userJson['height']);
  }

  @override
  String toString() {
    return 'User(id : $id ,name: $name,  age: $age, height: $height)';
  }
}
