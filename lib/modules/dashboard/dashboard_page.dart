import 'package:employee_management_system/configs/constants/color_constants.dart';
import 'package:employee_management_system/configs/extensions/buildcontext_extensions.dart';
import 'package:employee_management_system/core/core_widgets/core_text.dart';
import 'package:employee_management_system/core/core_widgets/custom_field.dart';
import 'package:employee_management_system/core/core_widgets/spaces.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({super.key});

  final TextEditingController con = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu_sharp),
        actions: [
          CircleAvatar(
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
          Spaces.smallw,
        ],
      ),
      body: Column(
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
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
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
                    Container(
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
              ],
            ),
          ),
          Spaces.smallh,
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
              child: customTextWidget(
                text: "Leave Applications",
                fontSize: 21,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
