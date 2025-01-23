import 'package:flutter/material.dart';

class UiExam extends StatefulWidget {
  const UiExam({super.key});

  @override
  State<UiExam> createState() => _UiExamState();
}

class _UiExamState extends State<UiExam> {
  List<String> imageList = [
    "assets/lecture_flutter_image.png",
    "assets/flutter_graph.png",
    "assets/flutter_windows.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            imagePageView(),
            iconList(),
            noticeList(),
          ],
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: Text("복잡한 UI"),
      centerTitle: true,
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 3,
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
    );
  }

  Widget imagePageView() {
    return SizedBox(
      height: 200,
      child: PageView.builder(
        itemBuilder: (context, index) {
          return Image.asset(imageList[index]);
        },
      ),
    );
  }

  Widget iconList() {
    return GridView.count(
      crossAxisCount: 4,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(horizontal: 16),
      childAspectRatio: 1.3,
      children: [
        ...List.generate(
          6,
          (index) {
            return TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(foregroundColor: Colors.black),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.local_taxi,
                      size: 45,
                    ),
                    Text("택시 $index"),
                  ],
                ));
          },
        )
      ],
    );
  }

  Widget noticeList() {
    return ListView.builder(
      itemCount: 10,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {

          },
          leading: Icon(Icons.notifications_none_rounded),
          title: Padding(padding: EdgeInsets.symmetric(horizontal: 12),
          child: Text("[Event] notification"),
          ),
        );
      },
    );
  }
}
