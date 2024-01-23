import 'package:employee_management_system/configs/constants/color_constants.dart';
import 'package:flutter/material.dart';

class ItemModel {
  Color? color1;
  Color? color2;
  String? text;
  String? btmtext;

  ItemModel(this.color1, this.color2, this.text, this.btmtext);
}

List<ItemModel> items = [
  ItemModel(
      const Color(0xFF7158CD), ColorConstants.primaryColor, '48', 'Present'),
  ItemModel(const Color(0xFFFEF0E4), const Color(0xFFFF9445), '12', 'Late'),
  ItemModel(Colors.red[200], Colors.red, '18', 'Absent'),
  ItemModel(Colors.green[200], Colors.purple, '7', 'Half day'),
  ItemModel(Colors.grey[200], Colors.purple, '13', 'One day leaves'),
  ItemModel(Colors.red[200], Colors.red, '20', 'Sick leaves'),
];
