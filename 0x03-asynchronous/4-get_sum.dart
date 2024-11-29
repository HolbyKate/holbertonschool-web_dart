// Create function that calculates the total price of items for a certain user.

import '4-util.dart';
import 'dart:convert';

Future<num> calculateTotal() async {
  try {
    // Get user data trying other way
    String userData = await fetchUserData();
    String userId = jsonDecode(userData)["id"];

    // Get user order
    String userOrdersData = await fetchUserOrders(userId);
    List<dynamic> userProducts = jsonDecode(userOrdersData);

    // Calculate total
    num total = 0;
    for (final product in userProducts) {
      String productPrice = await fetchProductPrice(product);
      total += jsonDecode(productPrice);
    }

    return total;
  } catch (error) {
    return -1;
  }
}
