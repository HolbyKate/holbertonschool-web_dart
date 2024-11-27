// Create a function that prints the number of users.

import '0-util.dart';
//Function prototype Gets the user count by calling the provided function fetchUsersCount().
Future<void> usersCount() async {
  final count = await fetchUsersCount();
  print (count);
}