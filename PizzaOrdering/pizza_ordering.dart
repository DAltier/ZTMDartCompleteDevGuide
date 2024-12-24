import 'dart:io';

void main() {
  while (true) {
    displayMenu();
    var orderProcessed = customOrder();
    if (orderProcessed == -1) {
      print('Invalid order! Would you like to try again? Yes/No');
      var tryAgain = stdin.readLineSync();
      print('');
      if (tryAgain != null && tryAgain.toLowerCase() == 'yes') {
        continue;
      } else {
        print("Thanks for visiting! Hope to see you again soon.");
        break;
      }
    } else {
      displayTotalCost(orderProcessed);
      break;
    }
  }
}

Map<String, double> menu() {
  const pizzaMenu = {
    'cheese': 12.55,
    'pepperoni': 13.66,
    'hawaiian': 15.25,
  };
  return pizzaMenu;
}

void displayMenu() {
  final pizzaMenu = menu();
  for (var key in pizzaMenu.keys) {
    print('${key}: ${pizzaMenu[key]}');
  }
}

double customOrder() {
  print('What would you like to order?');
  final customerOrder = stdin.readLineSync();
  double orderProcessed = processOrder(customerOrder);
  return orderProcessed;
}

double processOrder(String? customerOrder) {
  final pizzaMenu = menu();
  if (customerOrder != null && customerOrder.isNotEmpty) {
    final orderedItems = customerOrder.split(',');
    for (String orderedItem in orderedItems) {
      if (!pizzaMenu.keys.contains(orderedItem.trim().toLowerCase())) {
        print('$orderedItem pizza is not on the menu');
        return -1;
      }
      double totalCost = totalOrderCost(orderedItems);
      return totalCost;
    }
  }
  return -1;
}

double totalOrderCost(List<String> orderedItems) {
  final pizzaMenu = menu();
  double totalCost = 0.0;
  for (var orderedItem in orderedItems) {
    orderedItem = orderedItem.trim().toLowerCase();
    totalCost += pizzaMenu[orderedItem] as double;
  }
  return totalCost;
}

void displayTotalCost(double totalCost) {
  print('Your total cost is \$${totalCost.toStringAsFixed(2)}');
}
