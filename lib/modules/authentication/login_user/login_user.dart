import 'dart:developer';
import 'package:employee_management_system/configs/constants/color_constants.dart';
import 'package:employee_management_system/configs/extensions/buildcontext_extensions.dart';
import 'package:employee_management_system/core/core_widgets/core_text.dart';
import 'package:employee_management_system/core/core_widgets/custom_elevated_button.dart';
import 'package:employee_management_system/core/core_widgets/custom_field.dart';
import 'package:employee_management_system/core/core_widgets/spaces.dart';
import 'package:employee_management_system/core/services/fingerprint_helper.dart';
import 'package:employee_management_system/modules/dashboard/dashboard_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  TextEditingController empIDController = TextEditingController();
  TextEditingController empPwController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Column(
                    // crossAxisAlignment: ,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spaces.mid,
                      SizedBox(
                        height: context.screenHeight * 0.4,
                        width: context.screenWidth,
                        child: SvgPicture.asset(
                          "assets/images/login_illustration.svg",
                        ),
                      ),
                      Spaces.mid,
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            customTextWidget(text: "Employee ID"),
                            Spaces.smallh,
                            customTextField(
                              keyBoard: TextInputType.number,
                              controller: empIDController,
                              hintText: "Enter your employee ID",
                            ),
                          ],
                        ),
                      ),
                      Spaces.mid,
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            customTextWidget(text: "Employee Password"),
                            Spaces.smallh,
                            customTextField(
                              controller: empPwController,
                              hintText: "Enter your employee ID",
                              isPassword: true,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // Spacer(),
                SizedBox(
                  height: context.screenHeight * 0.09,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: customElevatedBtnWidget(
                    width: context.screenWidth,
                    child: customTextWidget(
                      text: "Log in",
                      color: Colors.white,
                    ),
                    func: () {
                      context.pushReplacementScreenTo(DashboardPage());
                      log("HEllo world");
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: customElevatedBtnWidget(
                    width: context.screenWidth,
                    child: customTextWidget(
                      text: "Clock in/Clock out",
                      color: ColorConstants.primaryColor,
                    ),
                    bgColor: Colors.grey[200]!,
                    func: () async {
                      // console.log("")
                      // log("HEllo world");
                      final canAuth = await FingerPrintClass.canAuthenticate();
                      debugPrint(canAuth.toString());
                      final authenticate =
                          await FingerPrintClass.authenticate();
                      debugPrint("Authenticated : $authenticate");
                    },
                  ),
                ),
                Spaces.extrasmall,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
