import 'package:flutter/cupertino.dart';

class Cartprovider extends ChangeNotifier {
  final List<Map<String, dynamic>> cart = [];
  void addproducts(Map<String, dynamic> product) {
    notifyListeners();
    cart.add(product);
  }

  void removeproducts(Map<String, dynamic> product) {
    cart.remove(product);
    notifyListeners();
  }
}
