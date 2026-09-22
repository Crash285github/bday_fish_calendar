import "package:flutter/foundation.dart";

class AppModel extends ChangeNotifier {
  factory AppModel() => _instance;
  AppModel._();
  static final _instance = AppModel._();

  int _selectedYear = DateTime.now().year;
  int get selectedYear => _selectedYear;
  set selectedYear(int value) {
    if (_selectedYear != value) {
      _selectedYear = value;
      notifyListeners();
    }
  }

  int? _selectedMonth;
  int? get selectedMonth => _selectedMonth;
  set selectedMonth(int? value) {
    if (_selectedMonth != value) {
      _selectedMonth = value;
      notifyListeners();
    }
  }
}
