import 'package:employee_management_system/modules/authentication/login_user/login_user.dart';
import 'package:flutter/material.dart';

class EmployeeManagementSystem extends StatelessWidget {
  const EmployeeManagementSystem({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
        bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: Colors.white,
        ),
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
        indicatorColor: Colors.white,
      ),
      home: LoginPage(),
    );
  }
}
