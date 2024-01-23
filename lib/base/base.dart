import 'package:employee_management_system/modules/employee_stats/employee_stats.dart';
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
      home: const EmployeeStatsPage(),
    );
  }
}
