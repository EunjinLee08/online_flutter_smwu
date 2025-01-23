import 'package:flutter/cupertino.dart';

class CounterModel with ChangeNotifier{

  int count = 0;

  void countUp() {
    count++;
    notifyListeners();
  }
}