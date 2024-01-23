import 'package:employee_management_system/configs/constants/color_constants.dart';
import 'package:employee_management_system/core/core_widgets/core_text.dart';
import 'package:employee_management_system/core/core_widgets/spaces.dart';
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spaces.mid,
                customTextWidget(
                    text: 'Upcoming Holiday List',
                    color: ColorConstants.blackColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
                Spaces.mid,
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Card(
                      color: const Color(0xFFF7F7F7),
                      child: ExpansionTile(
                        title: Text("User $index"),
                        children: [
                          Text("Name : User $index"),
                        ],
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
