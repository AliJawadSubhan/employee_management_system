import 'package:employee_management_system/configs/extensions/buildcontext_extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../configs/constants/color_constants.dart';
import '../../../core/core_widgets/widget_links.dart';

class YourLeaves extends StatelessWidget {
  const YourLeaves({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
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
                      padding: const EdgeInsets.all(4.0),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
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
                      padding: const EdgeInsets.all(4.0),
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
    );
  }
}
