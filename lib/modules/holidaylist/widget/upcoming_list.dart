import 'package:employee_management_system/configs/constants/color_constants.dart';
import 'package:employee_management_system/core/core_widgets/core_text.dart';
import 'package:employee_management_system/core/core_widgets/spaces.dart';
import 'package:employee_management_system/modules/holidaylist/model/holiday_model.dart';
import 'package:flutter/material.dart';

class UpcomingList extends StatelessWidget {
  const UpcomingList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: holidaylist.length,
      itemBuilder: (context, index) {
        var item = holidaylist[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFFF7F7F7),
            ),
            child: Theme(
              data: ThemeData().copyWith(dividerColor: Colors.transparent),
              child: ExpansionTile(
                title: customTextWidget(
                    text: "$index)  ${item.name}",
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: ColorConstants.primaryColor),
                expandedAlignment: Alignment.topLeft,
                children: [
                  Spaces.smallh,
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: customTextWidget(
                        text: item.date.toString(),
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                  Spaces.mid,
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
