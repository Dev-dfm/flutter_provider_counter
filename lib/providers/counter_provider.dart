import 'package:flutter/material.dart';

class Counter with ChangeNotifier {
  int _count = 0;

  int get count => _count; // Getter to have access to the count from outside

  void increment() {
    _count++;
    notifyListeners(); // Notify listeners about changes
  }

  void decrement() {
    _count--;
    notifyListeners();
  }

  void reset() {
    _count = 0;
    notifyListeners();
  }
}
