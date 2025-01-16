import 'package:flutter/material.dart';

class TextScreen extends StatelessWidget {
  const TextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text")),
      body: Column(
        children: [
          Text(
            "Flutter\nText\nWidget",
            style: TextStyle(
              color: Colors.red,
              fontSize: 24,
              fontWeight: FontWeight.w500,
              letterSpacing: 3,
              height: 2,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            "텍스트 위젯 길이 확인, 텍스트 위젯 길이 확인, 텍스트 위젯 길이 확인, 텍스트 위젯 길이 확인, 텍스트 위젯 길이 확인, ",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
