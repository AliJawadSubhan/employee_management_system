import 'package:employee_management_system/configs/constants/color_constants.dart';
import 'package:employee_management_system/configs/extensions/buildcontext_extensions.dart';
import 'package:employee_management_system/core/core_widgets/core_text.dart';
import 'package:employee_management_system/core/core_widgets/spaces.dart';
import 'package:employee_management_system/modules/attendence/attendence_provider.dart';
import 'package:employee_management_system/modules/attendence/model/attendence_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AttendenceList extends StatelessWidget {
  const AttendenceList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AttendenceProvider>(
      builder: (context, provider, child) {
        return provider.isloading == true
            ? SizedBox(
                height: context.screenHeight * 0.5,
                child: const Center(
                  child: CircularProgressIndicator(
                    color: ColorConstants.primaryColor,
                  ),
                ),
              )
            : ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: provider.sortData.isEmpty
                    ? attendenceList.length
                    : provider.sortData.length,
                itemBuilder: (context, index) {
                  var item = provider.sortData.isEmpty
                      ? attendenceList[index]
                      : provider.sortData[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFF7F7F7),
                      ),
                      child: Theme(
                        data: ThemeData()
                            .copyWith(dividerColor: Colors.transparent),
                        child: ExpansionTile(
                          tilePadding: const EdgeInsets.only(
                              left: 12.0, top: 10.0, bottom: 5.0, right: 10.0),
                          title: Column(
                            children: [
                              rowData('Date', item.date!),
                              Spaces.smallh,
                              rowData('Day', item.day!),
                              Spaces.smallh,
                              rowData('Employee Name', item.detail!),
                            ],
                          ),
                          expandedAlignment: Alignment.topLeft,
                          childrenPadding: const EdgeInsets.only(
                              left: 12.0, bottom: 10.0, right: 10.0),
                          children: [
                            rowData('Checkin', item.checkin!),
                            Spaces.smallh,
                            rowData('Checkout', item.checkout!),
                            Spaces.smallh,
                            rowData('Total Working Hrs', item.wrkingHrs!),
                            Spaces.smallh,
                            rowData('Status', item.status!),
                            Spaces.smallh,
                            rowData('Reason', item.reason!),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
      },
    );
  }
}

Widget rowData(
  String heading,
  String title,
) {
  return Builder(
    builder: (context) {
      return Row(
        children: [
          customTextWidget(
              text: '$heading:  ',
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: ColorConstants.blackColor),
          SizedBox(
            width: context.screenWidth * 0.36,
            child: customTextWidget(
                overflow: TextOverflow.ellipsis,
                text: title,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: ColorConstants.blackColor),
          ),
        ],
      );
    },
  );
}
