// handle error with asynchronous for api with function getUser

import '2-util.dart';
// We await the fetchUser() call
Future<void> getUser() async {
  try {
    final userData = await fetchUser();
    print(userData);
  } catch (error) {
    print('error caught: $error');
  }
}