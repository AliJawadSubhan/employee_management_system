import 'package:flutter/material.dart';
import 'package:omni_datetime_picker/omni_datetime_picker.dart';

List<DateTime>? datePicker(BuildContext context) {
  showOmniDateTimeRangePicker(
    context: context,
    startInitialDate: DateTime.now(),
    startFirstDate: DateTime(1600).subtract(const Duration(days: 3652)),
    startLastDate: DateTime.now().add(
      const Duration(days: 3652),
    ),
    endInitialDate: DateTime.now(),
    endFirstDate: DateTime(1600).subtract(const Duration(days: 3652)),
    endLastDate: DateTime.now().add(
      const Duration(days: 3652),
    ),
    type: OmniDateTimePickerType.date,
    borderRadius: const BorderRadius.all(Radius.circular(16)),
  );
}
