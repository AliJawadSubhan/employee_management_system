import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:employee_management_system/configs/constants/color_constants.dart';
import 'package:employee_management_system/configs/extensions/buildcontext_extensions.dart';
import 'package:employee_management_system/core/core_widgets/spaces.dart';
import 'package:employee_management_system/modules/holidaylist/widget/all_holidays.dart';
import 'package:employee_management_system/modules/holidaylist/widget/upcoming_list.dart';
import 'package:flutter/material.dart';

class HolidayPage extends StatelessWidget {
  const HolidayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: SizedBox(
              height: context.screenHeight,
              child: DefaultTabController(
                length: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Spaces.mid,
                    ButtonsTabBar(
                      physics: const NeverScrollableScrollPhysics(),
                      unselectedDecoration: BoxDecoration(
                        color: ColorConstants.whiteColor,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      height: 55,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: context.screenWidth * 0.06,
                      ),
                      backgroundColor: ColorConstants.primaryColor,
                      unselectedLabelStyle: const TextStyle(
                        color: ColorConstants.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                      labelStyle: const TextStyle(
                        color: ColorConstants.whiteColor,
                        fontWeight: FontWeight.bold,
                      ),
                      tabs: const [
                        Tab(
                          text: "Upcoming Holidays",
                        ),
                        Tab(
                          text: "All Holidays",
                        ),
                      ],
                    ),
                    Spaces.mid,
                    const Expanded(
                      child: TabBarView(
                        children: <Widget>[
                          UpcomingList(),
                          AllHolidays(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
