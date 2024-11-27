//Function greetUser that returns a string as follows Hello <username>

import '3-util.dart';
import 'dart:convert';

Future<String> greetUser() async {
  try {
    final userData = await fetchUserData();
    final userMap = jsonDecode(userData);
    return 'Hello ${userMap['username']}';
  } catch (error) {
    return 'error caught: $error';
  }
}

Future<String> loginUser() async {
  try {
    final userCheck = await checkCredentials();
    print('There is a user: $userCheck');

    if (userCheck) {
      return await greetUser();
    } else {
      return 'Wrong credentials';
    }
  } catch (error) {
    return 'error caught: $error';
  }
}
