import 'package:flutter/cupertino.dart';

class MyCounter extends ChangeNotifier {
  int counter = 20;

  decrement() {
    counter--;
    notifyListeners();
  }

  increment() {
    counter++;
    notifyListeners();
  }

  reset() {
    counter = 0;
    notifyListeners();
  }
}
