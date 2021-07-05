import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _counter = 0;

  get counter => this._counter;

  void increment() {
    this._counter++;
    notifyListeners();
  }

  void decrement() {
    if (this._counter > 0) {
      this._counter--;
      notifyListeners();
    }
  }
}
