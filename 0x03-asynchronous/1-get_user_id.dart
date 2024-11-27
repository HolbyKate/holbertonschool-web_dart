// Function that returns a future string representing the user’s ID.import '0-util.dart';
//import a dart converter for json

import '1-util.dart';
import 'dart:convert';

Future<String> getUserId() async {
  final userData = await fetchUserData();
  final userMap = jsonDecode(userData);
  return userMap['id'];
}