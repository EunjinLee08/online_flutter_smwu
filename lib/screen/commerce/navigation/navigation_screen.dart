import 'package:flutter/material.dart';
import 'package:online_lecture_smwu/screen/commerce/cart/cart_screen.dart';
import 'package:online_lecture_smwu/screen/commerce/cart/cart_view_model.dart';
import 'package:online_lecture_smwu/screen/commerce/category/category_screen.dart';
import 'package:online_lecture_smwu/screen/commerce/home/home_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {

  int currentIndex = 0;
  @override
  void initState() {
    CartViewModel.instance.clear();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.withValues(alpha: 0.5),
      appBar: AppBar(
        elevation: 5,
        shadowColor: Colors.black,
        backgroundColor: Color(0x00008B),
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Commerce App",
          style: TextStyle(
            color: Colors.white.withValues(alpha: 0.8),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: IndexedStack(
        index: currentIndex,
        children: [
          HomeScreen(),
          CategoryScreen(),
          CartScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Icon(Icons.home),
        ), label: "Home"),
        BottomNavigationBarItem(icon: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Icon(Icons.category_outlined),
        ), label: "Category"),
        BottomNavigationBarItem(icon: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Icon(Icons.shopping_cart),
        ), label: "Cart"),

      ],
        unselectedItemColor: Colors.white.withValues(alpha: 0.5),
        selectedItemColor: Colors.white,
        currentIndex: currentIndex,
        backgroundColor: Color(0x00008B),
        onTap: (value) {
          currentIndex = value;
          setState(() {

          });
        },
      ),
    );
  }
}
