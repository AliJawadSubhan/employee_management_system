import 'package:flutter/material.dart';

class AttendenceProvider extends ChangeNotifier {
  String selectedStartDate = '21/01/2024';
  String selectedEndDate = '21/01/2024';
  TextEditingController dateController = TextEditingController();

  void showDate() {
    dateController.text = '$selectedStartDate to $selectedEndDate';
    notifyListeners();
  }

  selectStartDate(dynamic val) {
    selectedStartDate = val;
    debugPrint(selectedStartDate);
    notifyListeners();
  }

  selectEndDate(dynamic val) {
    selectedEndDate = val;
    debugPrint(selectedEndDate);
    notifyListeners();
  }
}
