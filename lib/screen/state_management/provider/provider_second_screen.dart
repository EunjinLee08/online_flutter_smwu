import 'package:flutter/material.dart';
import 'package:online_lecture_smwu/screen/state_management/provider/counter_model.dart';
import 'package:provider/provider.dart';

class ProviderSecondScreen extends StatelessWidget {
  const ProviderSecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counterModel = Provider.of<CounterModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Provider"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Text(
              counterModel.count.toString(),
              style: TextStyle(fontSize: 20),
            ),
          ),
          ElevatedButton(onPressed: () {
            counterModel.countUp();
          }, child: Text("Count Up")),
        ],
      ),
    );
  }
}
