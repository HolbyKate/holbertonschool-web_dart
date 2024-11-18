import '1-usertojson.dart';

void main() {
  final user = User(name: "Cathy", age: 25, height: 1.89);
  print(user.toJson());
}