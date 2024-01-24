import 'package:flutter/material.dart';

class HotelMenuProvider extends ChangeNotifier {
  int itemcount = 0;

  void increment() {
    itemcount++;
    notifyListeners();
  }

  void decrement() {
    if (itemcount > 0) {
      itemcount--;
      notifyListeners();
    }
  }
}
