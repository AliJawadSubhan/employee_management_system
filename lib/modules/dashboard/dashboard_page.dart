import 'package:employee_management_system/configs/constants/color_constants.dart';
import 'package:employee_management_system/configs/extensions/buildcontext_extensions.dart';
import 'package:employee_management_system/core/core_widgets/core_text.dart';
import 'package:employee_management_system/core/core_widgets/custom_elevated_button.dart';
import 'package:employee_management_system/core/core_widgets/custom_field.dart';
import 'package:employee_management_system/core/core_widgets/spaces.dart';
import 'package:employee_management_system/modules/employee_stats/employee_stats.dart';
import 'package:employee_management_system/modules/holidaylist/holiday_list.dart';
import 'package:flutter/material.dart';

import '../employee_stats/model/item_model.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({super.key});

  final TextEditingController con = TextEditingController();
  // const final var
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: ColorConstants.whiteColor,
        leading: const Icon(Icons.menu_sharp),
        actions: [
          GestureDetector(
            onTap: () {
              context.pushScreenTo(const EmployeeStatsPage());
            },
            child: CircleAvatar(
              radius: 24,
              backgroundColor: Colors.grey[300],
              child: CircleAvatar(
                radius: 22,
                backgroundColor: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    'assets/icons/woman.png',
                  ),
                ),
              ),
            ),
          ),
          Spaces.smallw,
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: customTextWidget(text: "Hello!"),
            ),
            Spaces.smallh,
            Center(
                child: customTextWidget(
              text: "Ali Jawad",
              fontSize: 18,
              color: ColorConstants.primaryColor,
            )),
            Center(
              child: customTextWidget(
                text: "Senior Flutter developer",
                fontSize: 14,
                color: Colors.grey.shade500,
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: customTextField(
                  controller: con,
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Color(
                      0xFFABB3BB,
                    ),
                  ),
                  hintText: "Search Here",
                ),
              ),
            ),
            Spaces.large,
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                child: customTextWidget(
                  text: "Category",
                  fontSize: 21,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
              child: Row(
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.pushScreenTo(const EmployeeStatsPage());
                        },
                        child: Container(
                          height: context.screenHeight * 0.1,
                          width: 72,
                          decoration: const BoxDecoration(
                            color: ColorConstants.primaryColor,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Image.asset(
                              "assets/icons/calendar.png",
                              width: 32,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Spaces.smallh,
                      customTextWidget(
                        text: "Attendance",
                        fontSize: 14,
                      ),
                    ],
                  ),
                  Spaces.midw,
                  Column(
                    children: [
                      Container(
                        height: context.screenHeight * 0.1,
                        width: 72,
                        decoration: const BoxDecoration(
                          color: Color(0xFFFFC398),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Image.asset(
                            "assets/icons/logout.png",
                            width: 32,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Spaces.smallh,
                      customTextWidget(
                        text: "Leaves",
                        fontSize: 14,
                      ),
                    ],
                  ),
                  Spaces.midw,
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.pushScreenTo(const HolidayPage());
                        },
                        child: Container(
                          height: context.screenHeight * 0.1,
                          width: 72,
                          decoration: const BoxDecoration(
                            color: Color(0xFF5A82F3),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Image.asset(
                              "assets/icons/party.png",
                              width: 32,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Spaces.smallh,
                      customTextWidget(
                        text: "Holidays",
                        fontSize: 14,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Spaces.smallh,
            Align(
              // alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 12),
                    child: customTextWidget(
                      text: "Leave Applications",
                      fontSize: 21,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 12),
                    child: customTextWidget(
                      text: "See All (2)",
                      color: const Color(
                        0xFFABB3BB,
                      ),
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: customElevatedBtnWidget(
                          child: customTextWidget(
                            text: "Requested",
                            color: ColorConstants.primaryColor,
                            fixText: true,
                            maxLines: 1,
                          ),
                          func: () {},
                          height: 45,
                          bgColor: const Color(0xFFF0EBFE),
                          width: 130,
                        ),
                      ),
                      Spaces.smallw,
                      Expanded(
                        child: customElevatedBtnWidget(
                          child: customTextWidget(
                            text: "Pending",
                            fixText: true,
                            maxLines: 1,
                            color: Colors.grey.shade500,
                          ),
                          func: () {},
                          height: 45,
                          bgColor: Colors.white,
                          width: 130,
                        ),
                      ),
                      Spaces.smallw,
                      Expanded(
                        child: customElevatedBtnWidget(
                          child: customTextWidget(
                            text: "Accepted",
                            fixText: true,
                            maxLines: 1,
                            color: Colors.grey.shade500,
                          ),
                          func: () {},
                          height: 45,
                          bgColor: Colors.white,
                          width: 130,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(
                          0xFFABB3BB,
                        ).withOpacity(.2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      height: context.screenHeight * 0.16,
                      width: context.screenWidth,
                      child: Row(
                        children: [
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                              ),
                              child: CircleAvatar(
                                radius: 36,
                                backgroundColor: Colors.grey[300],
                                child: CircleAvatar(
                                  radius: 34,
                                  backgroundColor: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Image.asset(
                                      'assets/icons/woman.png',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                customTextWidget(
                                  text: "Ali Jawad Subhan",
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                Spaces.extrasmallw,
                                customTextWidget(
                                  text: "27 November",
                                  fontSize: 14,
                                ),
                                Spaces.extrasmall,
                                customTextWidget(
                                  text: "Tummy Ache",
                                  fontSize: 14,
                                  color: ColorConstants.primaryColor,
                                ),
                              ],
                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: customElevatedBtnWidget(
                                circlularBorderRadius: 22,
                                child: customTextWidget(
                                  text: "Cancel",
                                  fixText: true,
                                  maxLines: 1,
                                  color: Colors.white,
                                ),
                                bgColor: Colors.red,
                                func: () {},
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                child: customTextWidget(
                  text: "Month Attendance",
                  fontSize: 21,
                ),
              ),
            ),
            const GridItem(),
          ],
        ),
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  const GridItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemCount: items.length - 3,
      itemBuilder: (context, index) {
        return Column(
          children: [
            CircleAvatar(
              radius: 35,
              backgroundColor: items[index].color1!.withOpacity(0.6),
              child: Center(
                child: customTextWidget(
                  text: items[index].text,
                  color: items[index].color2!,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Spaces.smallh,
            customTextWidget(text: items[index].btmtext, fontSize: 17)
          ],
        );
      },
    );
  }
}
