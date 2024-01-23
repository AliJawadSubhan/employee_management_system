import 'package:employee_management_system/configs/constants/color_constants.dart';
import 'package:employee_management_system/configs/extensions/buildcontext_extensions.dart';
import 'package:employee_management_system/core/core_widgets/core_text.dart';
import 'package:employee_management_system/core/core_widgets/global_profile_bar.dart';
import 'package:employee_management_system/core/core_widgets/spaces.dart';
import 'package:employee_management_system/modules/employee_stats/widgets/graph.dart';
import 'package:employee_management_system/modules/employee_stats/widgets/grid_item.dart';
import 'package:flutter/material.dart';

class EmployeeStatsPage extends StatelessWidget {
  const EmployeeStatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spaces.mid,
                const GlobalProfileAppbar(),
                Spaces.mid,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customTextWidget(
                          text: 'Working Hours',
                          color: ColorConstants.blackColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                      Spaces.mid,
                      Container(
                          height: 400,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFFF7F7F7),
                          ),
                          width: context.screenWidth,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                customTextWidget(text: '9h 16m'),
                                customTextWidget(
                                    text: 'Today',
                                    color: Colors.grey.shade400,
                                    fontWeight: FontWeight.w400),
                                CustomChart(),
                              ],
                            ),
                          )),
                      Spaces.mid,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          customTextWidget(
                              text: 'Attendence',
                              color: ColorConstants.blackColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                          customTextWidget(
                              text: 'Nov 2023',
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        ],
                      ),
                      Spaces.mid,
                      const GridItem(),
                      Spaces.mid,
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
