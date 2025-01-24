import 'package:flutter/material.dart';
import 'package:online_lecture_smwu/screen/commerce/model/product_model.dart';

import '../../util.dart';

class ProductGreed extends StatelessWidget {
  const ProductGreed(
      {required this.productList,
      required this.onPressed,
      required this.scroll,
      super.key});

  final List<ProductModel> productList;
  final bool scroll;
  final Function(ProductModel productModel) onPressed;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: scroll
          ? const ClampingScrollPhysics()
          : const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: 0.6,
      padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
      crossAxisSpacing: 16,
      children: List.generate(productList.length, (index) {
        ProductModel product = productList[index];
        return GestureDetector(
          onTap: () => onPressed(product),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                product.image,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 10),
              Text(
                product.name,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              Text(
                "${Util.nFormat.format(product.price)} won",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Text("Ratings ${product.reviewRating} (${product.reviewCount})"),
            ],
          ),
        );
      }),
    );
  }
}
