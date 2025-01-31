class TPricingCalculator {
  /// Calculate Price based on tax and shipping
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  /// Calculate shipping cost
  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  /// Calculate tax
  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    // Replace with your actual tax rate logic based on location.
    // This is just a placeholder.
    switch (location) {
      case 'CA':
        return 0.0825; // California tax rate
      case 'NY':
        return 0.08875; // New York tax rate
      default:
        return 0.05; // Default tax rate
    }
  }

  static double getShippingCost(String location) {
    // Replace with your actual shipping cost logic based on location and/or product price.
    // This is just a placeholder.
    switch (location) {
      case 'CA':
        return 10.0;
      case 'NY':
        return 15.0;
      default:
        return 5.0;
    }
  }

  /// Sum all cart values and return total amount
// static double calculateCartTotal(CartModel cart) {
//   return cart.items.map((e) => e.price).fold(
//       0, (previousPrice, currentPrice) => previousPrice + (currentPrice ?? 0));
// }
}
