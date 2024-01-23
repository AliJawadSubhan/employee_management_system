import 'package:employee_management_system/core/core_widgets/core_text.dart';
import 'package:flutter/material.dart';

class EmployeeManagementSystem extends StatelessWidget {
  const EmployeeManagementSystem({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        bottomSheetTheme:
            const BottomSheetThemeData(backgroundColor: Colors.white),
        useMaterial3: true,
        indicatorColor: Colors.white,
      ),
      home: Scaffold(
        body: Center(
          child: customTextWidget(
            text:
                "Hello world, Wow we are the best flutter developers! They shall know",
          ),
        ),
      ),
    );
  }
}
