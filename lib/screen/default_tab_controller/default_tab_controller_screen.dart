import 'package:flutter/material.dart';

class DefaultTabControllerScreen extends StatefulWidget {
  const DefaultTabControllerScreen({super.key});

  @override
  State<DefaultTabControllerScreen> createState() =>
      _DefaultTabControllerScreenState();
}

class _DefaultTabControllerScreenState extends State<DefaultTabControllerScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this, initialIndex: 1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Default Tab Controller"),
      ),
      body: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              _tabBar(),
              SizedBox(height: 400, child: _tabBarView())
            ],
          )),
    );
  }

  TabBar _tabBar() {
    return TabBar(
        controller: tabController,
        labelColor: Colors.black,
        indicatorSize: TabBarIndicatorSize.tab,
        tabs: [
          Tab(
            text: "tab a",
          ),
          Tab(
            text: "tab b",
          ),
          Tab(
            text: "tab c",
          )
        ]);
  }

  TabBarView _tabBarView() {
    return TabBarView(
      viewportFraction: 0.8,
      controller: tabController,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Image.asset("assets/lecture_flutter_image.png"),
        ),
        Container(
          margin: EdgeInsets.all(5),
          color: Colors.red,
        ),
        Container(
          margin: EdgeInsets.all(5),
          color: Colors.blue,
        )
      ],
    );
  }
}
