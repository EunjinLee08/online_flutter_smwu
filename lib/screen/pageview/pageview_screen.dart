import 'package:flutter/material.dart';

class PageviewScreen extends StatefulWidget {
  const PageviewScreen({super.key});

  @override
  State<PageviewScreen> createState() => _PageviewScreenState();
}

class _PageviewScreenState extends State<PageviewScreen> {
  final PageController pageController = PageController();

  double opacity = 0;

  @override
  void initState() {
    pageController.addListener(
      () {
        opacity = pageController.page! * 0.3;
        setState(() {

        });
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pageview"),
      ),
      body: Column(
        children: [
          Opacity(
            opacity: opacity,
            child: Container(
              color: Colors.black,
              height: 50,
            ),
          ),
          Expanded(
            child: PageView(
              controller: pageController,
              onPageChanged: (value) {
                print("value : $value");
              },
              children: [
                Container(
                  color: Colors.red,
                ),
                Container(
                  color: Colors.blue,
                ),
                Container(
                  color: Colors.green,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
