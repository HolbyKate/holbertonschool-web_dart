// Create function that calculates the total price of items for a certain user.

import '4-util.dart';
import 'dart:convert';

Future<double> calculateTotal() async {
  try {
    // Get user data
    final Map<String, dynamic> userData = jsonDecode(await fetchUserData());
    final String userId = userData['id'];

    // Get user order
    final List<dynamic> userOrder = jsonDecode(await fetchUserOrders(userId));

    // Calculate total
    double total = 0.0;
    for (var product in userOrder) {
      final num price = jsonDecode(await fetchProductPrice(product));
      total += price.toDouble();
    }

    return total;
  } catch (error) {
    return -1;
  }
}
