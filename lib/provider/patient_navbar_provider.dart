import 'package:flutter/material.dart';

class PatientBottomNavigationBarProvider extends ChangeNotifier {
  int _selectedPage = 0;

  updateSelectedPage(int updatedPage) {
    _selectedPage = updatedPage;
    notifyListeners();
  }

  int get selectedPage => _selectedPage;
}