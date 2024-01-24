import 'package:employee_management_system/configs/constants/color_constants.dart';
import 'package:employee_management_system/configs/extensions/buildcontext_extensions.dart';
import 'package:employee_management_system/core/core_widgets/widget_links.dart';
import 'package:employee_management_system/modules/attendence/attendence_provider.dart';
import 'package:employee_management_system/modules/attendence/widgets/attendence_list.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:omni_datetime_picker/omni_datetime_picker.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class AttendancePage extends StatelessWidget {
  const AttendancePage({super.key});

  @override
  Widget build(BuildContext context) {
    final attendenceProvider = Provider.of<AttendenceProvider>(context);

    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: ColorConstants.whiteColor,
        leading: GestureDetector(
          onTap: () {
            context.popFromScreen();
          },
          child: const Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: ColorConstants.blackColor,
          ),
        ),
        centerTitle: true,
        title: customTextWidget(
            text: 'Attendence', fontSize: 22, fontWeight: FontWeight.w600),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spaces.mid,
                Container(
                  width: context.screenWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13.0),
                    color: const Color(0xFFF7F7F7),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        customTextWidget(
                            text: 'Select the date range',
                            fontSize: 19,
                            fontWeight: FontWeight.w600),
                        Spaces.mid,
                        customTextField(
                            isReadOnly: true,
                            suffixIcon: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 5.0,
                              ),
                              child: GestureDetector(
                                onTap: () async {
                                  List<DateTime>? dateTimeList =
                                      await showOmniDateTimeRangePicker(
                                    context: context,
                                    startInitialDate: DateTime.now(),
                                    startFirstDate: DateTime(1600)
                                        .subtract(const Duration(days: 3652)),
                                    startLastDate: DateTime.now().add(
                                      const Duration(days: 3652),
                                    ),
                                    endInitialDate: DateTime.now(),
                                    endFirstDate: DateTime(1600)
                                        .subtract(const Duration(days: 3652)),
                                    endLastDate: DateTime.now().add(
                                      const Duration(days: 3652),
                                    ),
                                    type: OmniDateTimePickerType.date,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(16)),
                                  );
                                  if (dateTimeList != null) {
                                    attendenceProvider.selectStartDate(
                                        DateFormat('dd/MM/yyyy')
                                            .format(dateTimeList.first)
                                            .toString());
                                    attendenceProvider.selectEndDate(
                                        DateFormat('dd/MM/yyyy')
                                            .format(dateTimeList.last)
                                            .toString());
                                    attendenceProvider.showDate();
                                  }
                                },
                                child: const CircleAvatar(
                                  radius: 15,
                                  backgroundColor: ColorConstants.primaryColor,
                                  child: Icon(
                                    Icons.calendar_month,
                                    color: ColorConstants.whiteColor,
                                  ),
                                ),
                              ),
                            ),
                            hintText: 'mm/dd/yyyy to mm/dd/yyyy',
                            height: 50,
                            controller: context
                                .watch<AttendenceProvider>()
                                .dateController),
                        Spaces.large,
                        SizedBox(
                          height: 40.0,
                          child: Row(
                            children: [
                              Expanded(
                                  child: customElevatedBtnWidget(
                                      bgColor: ColorConstants.primaryColor,
                                      child: customTextWidget(
                                          text: 'APPLY FILTER',
                                          color: ColorConstants.whiteColor),
                                      func: () {
                                        attendenceProvider.sortList();
                                      })),
                              Spaces.smallw,
                              Expanded(
                                  child: customElevatedBtnWidget(
                                      bgColor: const Color(0xffde061d),
                                      child: customTextWidget(
                                          text: 'RESET',
                                          color: ColorConstants.whiteColor),
                                      func: () {
                                        attendenceProvider.dateController
                                            .clear();
                                        attendenceProvider.clearList();
                                      })),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Spaces.mid,
                const AttendenceList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
