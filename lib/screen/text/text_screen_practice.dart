import 'package:flutter/material.dart';

class TextScreenPractice extends StatelessWidget {
  const TextScreenPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text")),
      body: Column(
        children: [
          Text(
            "Text 위젯 실습입니다. 색상은 deepOrange",
            style: TextStyle(
              color: Colors.deepOrange,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.5,

            ),
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),

        ],
      ),
    );
  }
}