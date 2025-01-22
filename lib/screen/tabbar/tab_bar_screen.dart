import 'package:flutter/material.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController =
      TabController(length: games.length, vsync: this);
  List<String> gameHours = [
    "Don't Starve: 42.5h",
    "Dead by Daylight: 46.5h",
    "Diablo 4: 19.9h",
    "Overwatch2: 9.1h",
    "Devil may Cry 5: 37m",
    "Hades: 4.2h",
    "Baldur's Gate 3: 9.4h",
    "Cult of the Lamb: 42.2h"
  ];
  List<String> games = [
    "Don't Starve",
    "Dead by Daylight",
    "Diablo 4",
    "Overwatch2",
    "Devil may Cry 5",
    "Hades",
    "Baldur's Gate 3",
    "Cult of the Lamb"
  ];

  String selectedTab = "none";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Tab Bar"),
      ),
      body: Column(
        children: [
          Text(selectedTab,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          TabBar(
            controller: tabController,
            onTap: (value) {
              selectedTab = games[tabController.index];
              setState(() {

              });
            },
            isScrollable: true,
            labelStyle: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
            unselectedLabelStyle:
                TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
            overlayColor: WidgetStateProperty.all(Colors.blue.shade100),
            splashBorderRadius: BorderRadius.circular(10),
            //indicatorColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.tab,
            //indicatorWeight: 3,

            indicator: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(width: 5, color: Colors.blueGrey),
            ),
            dividerHeight: 2,
            padding: EdgeInsets.all(30),
            labelPadding: EdgeInsets.symmetric(horizontal: 15),
            tabs: List.generate(
              games.length, (index) => Tab(text: games[index],),

            ),
          ),
        ],
      ),
    );
  }
}
