import 'package:flutter/material.dart';
import 'package:online_lecture_smwu/screen/commerce/cart/cart_view_model.dart';
import 'package:online_lecture_smwu/screen/commerce/home/widgets/home_image.dart';
import 'package:online_lecture_smwu/screen/commerce/home/widgets/home_short_cut.dart';
import 'package:online_lecture_smwu/screen/commerce/home/widgets/home_subtitle.dart';
import 'package:online_lecture_smwu/screen/commerce/home/widgets/product_greed.dart';
import 'package:online_lecture_smwu/screen/commerce/home/widgets/product_horizontal.dart';

import '../model/product_model.dart';
import '../util.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<ProductModel> recommendedProduct = [
    ProductModel(image: "assets/commerce/스크린샷 2025-01-24 142640.png", name: "Nine Sols", price: 32000, like: false, reviewCount: 20723, reviewRating: "Overwhelmingly Positive"),
    ProductModel(image: "assets/commerce/스크린샷 2025-01-24 142704.png", name: "Diablo 4", price: 34320, like: false, reviewCount: 31224, reviewRating: "Mostly Positive"),
    ProductModel(image: "assets/commerce/스크린샷 2025-01-24 142658.png", name: "Frost Punk", price: 3200, like: false, reviewCount: 98197, reviewRating: "Very Positive"),
  ];

  List<ProductModel> recentProduct = [
    ProductModel(image: "assets/commerce/스크린샷 2025-01-24 142640.png", name: "Nine Sols", price: 32000, like: false, reviewCount: 20723, reviewRating: "Overwhelmingly Positive"),
    ProductModel(image: "assets/commerce/스크린샷 2025-01-24 142704.png", name: "Diablo 4", price: 34320, like: false, reviewCount: 31224, reviewRating: "Mostly Positive"),
    ProductModel(image: "assets/commerce/스크린샷 2025-01-24 142658.png", name: "Frost Punk", price: 3200, like: false, reviewCount: 98197, reviewRating: "Very Positive"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        HomeImage(),
        SizedBox(
          height: 50,
        ),
        HomeShortCut(),
        SizedBox(height: 50,),
        HomeSubtitle(label: "Recommended", color: Colors.white,),
        ProductHorizontal(productList: recommendedProduct),
        SizedBox(height: 30,),
        HomeSubtitle(label: "Recently Updated", color: Colors.white,),
        ProductHorizontal(productList: recentProduct),
        SizedBox(height: 30,),
        HomeSubtitle(label: "On Discount", color: Colors.white,),
        ProductGreed(productList: recommendedProduct, onPressed: (productModel) {
          CartViewModel.instance.addProduct(productModel);

        }, scroll: true)

      ],
    );
  }
}
