import 'package:flutter/material.dart';

class BottomSheetScreen extends StatelessWidget {
  const BottomSheetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet"),
      ),
      body: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              isDismissible: false,
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              context: context,
              builder: (context) {
                return Container(
                  height: 200,
                );
              },
            );
          },
          child: Text("Call Bottom Sheet")),
    );
  }
}
