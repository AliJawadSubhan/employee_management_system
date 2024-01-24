import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:omni_datetime_picker/omni_datetime_picker.dart';

class LeavesProvider extends ChangeNotifier {
  String startDate = "Select Start Date";
  String endDate = "Select End Date";

  final TextEditingController startDateController = TextEditingController();
  final TextEditingController endDateController = TextEditingController();
  final TextEditingController reasonController = TextEditingController();

  void setStartDate(dynamic val) {
    startDateController.text = val;
    notifyListeners();
  }

  void setEndDate(dynamic val) {
    endDateController.text = val;
    notifyListeners();
  }
}
