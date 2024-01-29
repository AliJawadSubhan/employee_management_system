import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:employee_management_system/configs/constants/color_constants.dart';
import 'package:employee_management_system/configs/extensions/buildcontext_extensions.dart';
import 'package:employee_management_system/core/core_widgets/widget_links.dart';
import 'package:employee_management_system/modules/leaves/widgets/create_leave.dart';
import 'package:employee_management_system/modules/leaves/widgets/your_leaves.dart';
import 'package:flutter/material.dart';

import '../../core/core_widgets/global_profile_bar.dart';

class LeavesPage extends StatelessWidget {
  const LeavesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            children: [
              const GlobalProfileAppbar(),
              Spaces.mid,
              SizedBox(
                height: context.screenHeight,
                child: DefaultTabController(
                  length: 2,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
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
                            text: "Your Leaves",
                          ),
                          Tab(
                            text: "Create a leave",
                          ),
                        ],
                      ),
                      Spaces.smallh,
                      const Flexible(
                        child: TabBarView(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 6,
                              ),
                              child: YourLeaves(),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 6,
                              ),
                              child: CreateLeave(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
