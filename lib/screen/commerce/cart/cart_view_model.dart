import 'package:flutter/material.dart';
import 'package:online_lecture_smwu/screen/commerce/model/product_model.dart';

import '../util.dart';

class CartViewModel with ChangeNotifier {
  static final CartViewModel instance = CartViewModel();

  List<ProductModel> cartList = [];

  void clear() {
    cartList.clear();
  }

  void addProduct(ProductModel product) {
    if (cartList.any((element) => element == product)) {
      Util.showToast("Already in Cart");
      return;
    }
    cartList.add(product);
    notifyListeners();
    Util.showToast("Added to Cart");
  }

  void removeProduct(ProductModel product) {
    cartList.removeWhere((element) => element == product);
    notifyListeners();
  }
}
