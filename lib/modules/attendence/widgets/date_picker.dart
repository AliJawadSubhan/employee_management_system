import 'package:employee_management_system/configs/constants/color_constants.dart';
import 'package:employee_management_system/modules/attendence/attendence_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

Widget datePicker(BuildContext context) {
  final dateProvider = Provider.of<AttendenceProvider>(context);
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: SfDateRangePicker(
      showActionButtons: true,
      onCancel: () {
        dateProvider.isDate();
      },
      onSubmit: (args) {
        dateProvider.isDate();
        dateProvider.showDate();
      },
      onSelectionChanged: (args) {
        dateProvider.selectStartDate(
            DateFormat('dd/MM/yyyy').format(args.value.startDate).toString());
        dateProvider.selectEndDate(
            DateFormat('dd/MM/yyyy').format(args.value.endDate).toString());
      },
      headerStyle: DateRangePickerHeaderStyle(
          textStyle: TextStyle(
        fontStyle: FontStyle.normal,
        fontSize: 15,
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontWeight: FontWeight.w500,
        color: const Color(0xFF121212),
      )),
      view: DateRangePickerView.month,
      monthCellStyle: const DateRangePickerMonthCellStyle(
        todayTextStyle: TextStyle(
          color: ColorConstants.primaryColor,
        ),
      ),
      monthViewSettings: const DateRangePickerMonthViewSettings(
        dayFormat: 'EEE',
      ),
      todayHighlightColor: Colors.transparent,
      rangeTextStyle: const TextStyle(
        color: ColorConstants.primaryColor,
      ),

      rangeSelectionColor: const Color(0xFFF6EFED),
      endRangeSelectionColor: ColorConstants.primaryColor,
      startRangeSelectionColor: ColorConstants.primaryColor,
      selectionShape: DateRangePickerSelectionShape.rectangle,
      // onSelectionChanged: _onSelectionChanged,
      selectionMode: DateRangePickerSelectionMode.range,
      initialSelectedRange: PickerDateRange(
          DateTime.now().subtract(const Duration(days: 4)),
          DateTime.now().add(const Duration(days: 3))),
    ),
  );
}
