import 'package:flutter/material.dart';

class StackPracticeScreen extends StatelessWidget {
  const StackPracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stack"),),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                color: Colors.purple,
                width: 320,
                height: 320,
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                color: Colors.indigo,
                width: 280,
                height: 280,
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                color: Colors.blue,
                width: 240,
                height: 240,
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                color: Colors.green,
                width: 200,
                height: 200,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                color: Colors.yellow,
                width: 160,
                height: 160,
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                color: Colors.orange,
                width: 120,
                height: 120,
              ),
            ),
            Positioned(
              right: 0,
              child: Container(
                color: Colors.red,
                width: 80,
                height: 80,
              ),
            ),
          ],
        ),
      ),
    );
  }
}