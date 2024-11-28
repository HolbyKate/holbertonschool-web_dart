// Create function that calculates the total price of items for a certain user.
import '4-util.dart';

Future calculateTotal() async {
  try {
    // Get the user data
    final userData = await fetchUserData();
    final userInfo = json.decode(userData);
    final String userId = userInfo['id'];

    // Get the user order
    final ordersData = await fetchUserOrders(userId);
    final List<dynamic> orders = json.decode(ordersData);

    // Calculate total price
    double total = 0;
    for (String product in orders) {
      final priceData = await fetchProductPrice(product);
      final double price = json.decode(priceData);
      total += price;
    }

    return total;
  } catch (e) {
    return -1;
  }
}