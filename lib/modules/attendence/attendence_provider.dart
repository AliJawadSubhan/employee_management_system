import 'package:employee_management_system/modules/attendence/model/attendence_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AttendenceProvider extends ChangeNotifier {
  String selectedStartDate = '21/01/2024';
  String selectedEndDate = '21/01/2024';
  bool isloading = false;
  TextEditingController dateController = TextEditingController();
  List<AttendanceModel> sortData = [];
  void showDate() {
    dateController.text = '$selectedStartDate to $selectedEndDate';
    notifyListeners();
  }

  void clearList() async {
    await Future.delayed(
      const Duration(seconds: 0),
      () {
        isloading = true;
        sortData.clear();
        notifyListeners();
      },
    );
    await Future.delayed(
      const Duration(seconds: 2),
      () {
        isloading = false;
        notifyListeners();
      },
    );
    notifyListeners();
  }

  void sortList() async {
    await Future.delayed(
      const Duration(seconds: 0),
      () {
        isloading = true;
        sortData.clear();
        DateTime startDate = DateFormat('dd/MM/yyyy').parse(selectedStartDate);
        DateTime endDate = DateFormat('dd/MM/yyyy').parse(selectedEndDate);

        for (var e in attendenceList) {
          isloading = true;

          DateTime formattedDate = DateFormat('yyyy-MM-dd').parse(e.date!);
          if (formattedDate.isAtSameMomentAs(startDate) ||
              (formattedDate.isAfter(startDate) &&
                  formattedDate.isBefore(endDate)) ||
              formattedDate.isAtSameMomentAs(endDate)) {
            sortData.add(e);
          }
        }
        notifyListeners();
      },
    );
    await Future.delayed(
      const Duration(seconds: 2),
      () {
        isloading = false;
        notifyListeners();
      },
    );

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
