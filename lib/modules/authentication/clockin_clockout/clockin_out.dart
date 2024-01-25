import 'package:employee_management_system/configs/extensions/buildcontext_extensions.dart';
import 'package:employee_management_system/core/core_widgets/core_text.dart';
import 'package:employee_management_system/core/core_widgets/custom_elevated_button.dart';
import 'package:employee_management_system/core/core_widgets/custom_field.dart';
import 'package:employee_management_system/core/core_widgets/spaces.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ClockInOutPage extends StatelessWidget {
  ClockInOutPage({super.key});
  TextEditingController empPw = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: IconButton(
              onPressed: () {
                context.popFromScreen();
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
                size: 16,
              )),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Container(
            height: context.screenHeight * 0.4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: const Color(0xFFF7F7F7),
            ),
            child: Padding(
              padding: const EdgeInsets.all(23.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      customTextWidget(
                          text: 'Clockin/ ',
                          color: const Color(0xff344046),
                          fontSize: 26.0),
                      customTextWidget(
                          text: 'Clockout',
                          color: const Color(0xff8c8d90),
                          fontSize: 26.0),
                    ],
                  ),
                  Spaces.smallh,
                  customTextWidget(
                      lineHeight: 1.5,
                      text:
                          'Enter your password to Clockin/Clockout the attendence',
                      color: const Color(0xff8c8d90),
                      fontSize: 15.0),
                  Spaces.mid,
                  customTextField(
                    controller: empPw,
                    hintText: "Enter your password",
                    isPassword: true,
                  ),
                  Spaces.large,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: customElevatedBtnWidget(
                      width: context.screenWidth,
                      child: customTextWidget(
                        text: "Submit",
                        color: Colors.white,
                      ),
                      func: () {
                        // context.pushReplacementScreenTo(DashboardPage());
                        // log("HEllo world");
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
