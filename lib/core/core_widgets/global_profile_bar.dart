import 'package:employee_management_system/configs/constants/color_constants.dart';
import 'package:employee_management_system/configs/extensions/buildcontext_extensions.dart';
import 'package:employee_management_system/core/core_widgets/core_text.dart';
import 'package:flutter/material.dart';

class GlobalProfileAppbar extends StatelessWidget {
  const GlobalProfileAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 28,
        backgroundColor: Colors.grey[300],
        child: CircleAvatar(
          radius: 26,
          backgroundColor: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(
              'assets/icons/woman.png',
            ),
          ),
        ),
      ),
      title: customTextWidget(
          text: 'Oliver Hendry',
          color: ColorConstants.primaryColor,
          fontSize: 19,
          fontWeight: FontWeight.w500),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 3.0),
        child: customTextWidget(
            text: 'UI/UX Designer',
            color: Colors.grey.shade300,
            fontSize: 17,
            fontWeight: FontWeight.w500),
      ),
      trailing: GestureDetector(
        onTap: () {
          context.popFromScreen();
        },
        child: Padding(
          padding: const EdgeInsets.only(bottom: 23.0),
          child: customTextWidget(
              text: 'Back',
              color: ColorConstants.blackColor,
              fontSize: 17,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
