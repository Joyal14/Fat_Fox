import 'package:flutter/material.dart';

class SelectItemsList extends ChangeNotifier {
  String? _selectedFilter;

  String? get selectedFilter => _selectedFilter;

  void updateSelectedFilter(String? filter) {
    _selectedFilter = filter;
    notifyListeners();
  }
}
