// Create function that calculates the total price of items for a certain user.

import '4-util.dart';
import 'dart:convert';

Future<double> calculateTotal() async {
  try {
    // Get the user data
    final userData = await fetchUserData();
    final userInfo = json.decode(userData);
    final String userId = userInfo['id'];

    // Get the user order
    final ordersData = await fetchUserOrders(userId);
    if (ordersData.contains('error')) return -1;
    final List<dynamic> orders = json.decode(ordersData);

    // Calculate total price
    double total = 0;
    for (var product in orders) {
      final priceData = await fetchProductPrice(product);
      // start calculate the price in number and then in double
      if (priceData.contains('error')) return -1;
      total += json.decode(priceData);
    }

    return total;
  } catch (err) {
    return -1;
  }
}
