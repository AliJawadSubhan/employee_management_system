import 'package:employee_management_system/configs/constants/color_constants.dart';
import 'package:employee_management_system/configs/extensions/buildcontext_extensions.dart';
import 'package:employee_management_system/core/core_widgets/core_text.dart';
import 'package:employee_management_system/core/core_widgets/custom_field.dart';
import 'package:employee_management_system/core/core_widgets/widget_links.dart';
import 'package:employee_management_system/modules/leaves/leaves_provider.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:omni_datetime_picker/omni_datetime_picker.dart';
import 'package:provider/provider.dart';

class CreateLeave extends StatelessWidget {
  const CreateLeave({super.key});

  @override
  Widget build(BuildContext context) {
    final leavesProvider = Provider.of<LeavesProvider>(context);

    return Consumer<LeavesProvider>(builder: (context, leavesProvider, child) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customTextWidget(
              text: "Start date",
              fontSize: 18,
            ),
            Spaces.smallh,
            GestureDetector(
              onTap: () async {},
              child: customTextField(
                controller: leavesProvider.startDateController,
                hintText: "Start Date",
                isReadOnly: true,
                prefixIcon: GestureDetector(
                  onTap: () async {
                    DateTime? dateTime = await showOmniDateTimePicker(
                      context: context,
                      type: OmniDateTimePickerType.date,
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                    );
                    String formattedData =
                        "${dateTime?.year}-${dateTime?.day}-${dateTime?.month}";
                    leavesProvider.setStartDate(formattedData);
                    debugPrint("This is your starting date=> $formattedData");
                    // leavesProvider.setStartDate(dateTime)
                  },
                  child: const Icon(
                    Clarity.calendar_solid,
                  ),
                ),
              ),
            ),
            Spaces.mid,
            customTextWidget(
              text: "End date",
              fontSize: 18,
            ),
            Spaces.smallh,
            customTextField(
              controller: leavesProvider.endDateController,
              hintText: "End Date",
              isReadOnly: true,
              prefixIcon: GestureDetector(
                onTap: () async {
                  DateTime? dateTime = await showOmniDateTimePicker(
                    context: context,
                    type: OmniDateTimePickerType.date,
                    borderRadius: const BorderRadius.all(Radius.circular(16)),
                  );
                  String formattedData =
                      "${dateTime?.year}-${dateTime?.day}-${dateTime?.month}";
                  leavesProvider.setEndDate(formattedData);
                  debugPrint("This is your starting date=> $formattedData");
                },
                child: const Icon(
                  Clarity.calendar_solid,
                ),
              ),
            ),
            Spaces.mid,
            customTextWidget(
              text: "Reason",
              fontSize: 18,
            ),
            Spaces.smallh,
            SizedBox(
              height: 120,
              child: customTextField(
                // paddingWithoutContent: 15.0,
                height: 120,
                controller: leavesProvider.reasonController,
                maxLines: 10,
                hintText: "State your reason",
                prefixIcon: const Icon(
                  Clarity.pencil_line,
                ),
              ),
            ),
            Spaces.mid,
            customTextWidget(
              text: "Leave type",
              fontSize: 18,
            ),
            Spaces.smallh,
            const Flexible(
              // height: context.screenHeight * 0.35,
              // width: context.screenWidth * 0.3,
              child: GridItem(),
            ),
            Spaces.mid,
            SizedBox(
              width: context.screenWidth,
              child: customElevatedBtnWidget(
                child: customTextWidget(
                  text: "Submit",
                  color: Colors.white,
                ),
                func: () {},
              ),
            ),
          ],
        ),
      );
    });
  }
}

const List<String> items = [
  "Casual Leaves",
  "Medical Leaves",
  "Maternity Leaves",
  "Study Leaves",
  "Others",
];

class GridItem extends StatelessWidget {
  const GridItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, childAspectRatio: 1.7),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(7.0),
          child: Container(
            // height: 21,
            // width: 12,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(21),
              color: index == 0
                  ? ColorConstants.primaryColor
                  : Colors.grey.shade100,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: customTextWidget(
                  text: items[index],
                  textAlign: TextAlign.center,
                  color: index == 0
                      ? ColorConstants.whiteColor
                      : ColorConstants.primaryColor,
                  fontSize: 16,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
