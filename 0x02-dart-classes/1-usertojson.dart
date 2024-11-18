// Create an user class with toJson method

class User {
    final String name;
    final int age;
    final double height;

    User({required this.name, required this.age, required this.height});

    Map<String, dynamic> toJson() => {
        'name': name,
        'age': age,
        'height': height
    };
}