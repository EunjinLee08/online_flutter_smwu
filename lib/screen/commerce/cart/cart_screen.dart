import 'package:flutter/cupertino.dart';
import 'package:online_lecture_smwu/screen/commerce/cart/cart_view_model.dart';
import 'package:online_lecture_smwu/screen/commerce/home/widgets/product_greed.dart';

import '../util.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  CartViewModel vm = CartViewModel.instance;
  VoidCallback? listener;

  @override
  void initState() {
    listener = () {
      setState(() {});
    };
    vm.addListener(listener!);
    super.initState();
  }

  @override
  void dispose() {
    vm.removeListener(listener!);
    listener = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ProductGreed(
        productList: [], onPressed: (productModel) {
          vm.removeProduct(productModel);
          Util.showToast("Removed from the Cart");
    }, scroll: true);
  }
}
