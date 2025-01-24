import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {

  List<String> Multiplayers = [
    "FPS",
    "Survival"
  ];

  List<String> Puzzle = [
    "Horror"
  ];

  List<String> RPG = [
    "Railroad"
  ];

  List<String> Strategy = [
    "Action",
    "Survival"
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          expantionTile("Multi Players", Multiplayers),
        ],
      ),
    );
  }

  Widget expantionTile(String title, List<String> items) {
    return Theme(
      data: ThemeData().copyWith(
        dividerColor: Colors.white,
      ),
      child: ExpansionTile(
        iconColor: Colors.white,
        collapsedIconColor: Colors.white,
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),),
        children: List.generate(items.length, (index) {
          return Text(items[index], style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),);
        },)
      ),
    );
  }
}
