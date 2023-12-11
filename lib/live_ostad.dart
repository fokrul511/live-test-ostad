void main() {
  // Creating a list of fruits as maps
  List<Map<String, dynamic>> fruits = [
    {'name': 'Apple', 'color': 'Red', 'price': 2.5},
    {'name': 'Banana', 'color': 'Yellow', 'price': 1.0},
    {'name': 'Grapes', 'color': 'Purple', 'price': 3.0},
  ];

  // Displaying original fruit details
  print('Original Fruit Details before Discount:');
  displayFruitDetails(fruits);

  // Applying a 10% discount to the fruit prices
  applyPriceDiscount(fruits, 10);
  // applypriceDic(fruits, 10);

  // Displaying fruit details after applying the discount
  print('\nFruit Details After Applying 10% Discount:');
  displayFruitDetails(fruits);
}

// Function to display details of each fruit
void displayFruitDetails(List<Map<String, dynamic>> fruits) {
  for (var fruit in fruits) {
    print(
        'Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$${fruit['price']}');
  }
}

// Function to apply a discount to the price of each fruit
void applyPriceDiscount(
    List<Map<String, dynamic>> fruits, double discountPercentage) {
  for (var fruit in fruits) {
    double originalPrice = fruit['price'];
    double discountedPrice =
        originalPrice - (originalPrice * discountPercentage / 100);
    fruit['price'] = discountedPrice;
  }
}

// void applypriceDic(List<Map<String, dynamic>> fruitss, double dicpercen) {
//   for (var fruit in fruitss) {
//     double originalPrize = fruit['price'];
//     double dicPrice = originalPrize - (originalPrize * dicpercen / 100);
//     fruit['price'] = dicPrice;
//   }
// }
