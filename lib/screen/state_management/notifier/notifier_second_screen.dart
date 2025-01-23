import 'package:flutter/material.dart';
import 'package:online_lecture_smwu/screen/state_management/notifier/notifier_view_model.dart';

class NotifierSecondScreen extends StatefulWidget {
  const NotifierSecondScreen({super.key});

  @override
  State<NotifierSecondScreen> createState() => _NotifierSecondScreenState();
}

class _NotifierSecondScreenState extends State<NotifierSecondScreen> {
  final NotifierViewModel vm = NotifierViewModel();
  VoidCallback? listener;

  @override
  void initState() {
    listener = () {
      setState(() {});
    };
    vm.addListener(listener!);
    super.initState();
  }

  @override
  void dispose() {
    vm.removeListener(listener!);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifier Second"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Text(
              vm.count.toString(),
              style: TextStyle(fontSize: 20),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                vm.countUp();
              },
              child: Text("Count Up"))
        ],
      ),
    );
  }
}
