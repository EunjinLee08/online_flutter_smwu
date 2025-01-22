import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_lecture_smwu/screen/checkbox/checkbox_screen.dart';
import 'package:online_lecture_smwu/screen/click/click_screen.dart';
import 'package:online_lecture_smwu/screen/column_practice_screen.dart';
import 'package:online_lecture_smwu/screen/column_row_advanced_screen.dart';
import 'package:online_lecture_smwu/screen/column_screen.dart';
import 'package:online_lecture_smwu/screen/container_practice_screen.dart';
import 'package:online_lecture_smwu/screen/container_screen.dart';
import 'package:online_lecture_smwu/screen/image/image_screen.dart';
import 'package:online_lecture_smwu/screen/listview/listview_builder_screen.dart';
import 'package:online_lecture_smwu/screen/listview/listview_practice_screen.dart';
import 'package:online_lecture_smwu/screen/listview/listview_screen.dart';
import 'package:online_lecture_smwu/screen/network/network_screen.dart';
import 'package:online_lecture_smwu/screen/pageview/pageview_screen.dart';
import 'package:online_lecture_smwu/screen/row/row_practice_screen.dart';
import 'package:online_lecture_smwu/screen/row/row_screen.dart';
import 'package:online_lecture_smwu/screen/stack/stack_practice_screen.dart';
import 'package:online_lecture_smwu/screen/stack/stack_screen.dart';
import 'package:online_lecture_smwu/screen/stateful/stateful_screen.dart';
import 'package:online_lecture_smwu/screen/stateless/stateless_screen.dart';
import 'package:online_lecture_smwu/screen/tabbar/tab_bar_screen.dart';
import 'package:online_lecture_smwu/screen/text/text_form_field_screen.dart';
import 'package:online_lecture_smwu/screen/text/text_screen.dart';
import 'package:online_lecture_smwu/screen/text/text_screen_practice.dart';
import 'package:online_lecture_smwu/screen/todo/todo_screen.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return ContainerScreen();
                      },
                    ));
                  },
                  child: Text("Container")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return ContainerPracticeScreen();
                      },
                    ));
                  },
                  child: Text("Container Practice")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return ColumnScreen();
                      },
                    ));
                  },
                  child: Text("Column")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return ColumnPracticeScreen();
                      },
                    ));
                  },
                  child: Text("Column Practice")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return RowScreen();
                      },
                    ));
                  },
                  child: Text("Row")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return RowPracticeScreen();
                      },
                    ));
                  },
                  child: Text("Row Practice")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return ColumnRowAdvancedScreen();
                      },
                    ));
                  },
                  child: Text("Column Row Advanced")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return TextScreen();
                      },
                    ));
                  },
                  child: Text("Text")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return TextScreenPractice();
                      },
                    ));
                  },
                  child: Text("Text Practice")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return ImageScreen();
                      },
                    ));
                  },
                  child: Text("Image")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return StackScreen();
                      },
                    ));
                  },
                  child: Text("Stack")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return StackPracticeScreen();
                      },
                    ));
                  },
                  child: Text("Stack Practice")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return ListviewScreen();
                      },
                    ));
                  },
                  child: Text("ListView")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return ListviewBuilderScreen();
                      },
                    ));
                  },
                  child: Text("ListView Builder")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return ListviewPracticeScreen();
                      },
                    ));
                  },
                  child: Text("ListView Practice")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return StatelessScreen();
                      },
                    ));
                  },
                  child: Text("Stateless")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return StatefulScreen();
                      },
                    ));
                  },
                  child: Text("Stateful")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return ClickScreen();
                      },
                    ));
                  },
                  child: Text("Click")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return CheckboxScreen();
                      },
                    ));
                  },
                  child: Text("CheckBox")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return TextFormFieldScreen();
                      },
                    ));
                  },
                  child: Text("Text Form Field")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return TodoScreen();
                      },
                    ));
                  },
                  child: Text("Todo")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return NetworkScreen();
                      },
                    ));
                  },
                  child: Text("Network")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return PageviewScreen();
                      },
                    ));
                  },
                  child: Text("Pageview")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return TabBarScreen();
                      },
                    ));
                  },
                  child: Text("Tab Bar")),
            ],
          ),
        ),
      ),
    );
  }
}
