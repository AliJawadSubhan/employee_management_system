import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget customTextField({
  bool isReadOnly = false,
  final ValueChanged<String>? onChanged,
  VoidCallback? ontpap,
  colorBorder = Colors.grey,
  required controller,
  String? suffixText = '',
  int maxLengthText = 100,
  double fontSize = 14,
  double suffixfontSize = 14,
  Color suffixColor = Colors.white,
  FontWeight fontWeight = FontWeight.normal,
  double height = 50,
  String? hintText = "",
  double circularRadius = 10,
  bool isPassword = false,
  TextInputType keyBoard = TextInputType.text,
  Widget? prefixIcon,
  paddingWithoutContent = 0,
  Widget? suffixIcon,
  int maxLines = 1,
  Color? color,
  Color? fillColor,
}) {
  return Container(
    height: height,
    decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(circularRadius),
        border: Border.all(
          color: colorBorder,
        )),
    padding: const EdgeInsets.only(
      left: 12,
    ),
    child: TextField(
      // maxLength: maxLengthText,
      maxLines: maxLines,
      onChanged: onChanged,
      onTapOutside: (e) {
        FocusNode().unfocus();
      },
      // textAlignVertical: TextAlignVertical.center,
      textAlign: TextAlign.left,
      readOnly: isReadOnly,
      obscureText: isPassword,
      onTap: ontpap ?? () {},
      controller: controller,
      keyboardType: keyBoard,

      textAlignVertical: TextAlignVertical.top,
      // textAlignVertical: TextAlignVertical.center,
      style: TextStyle(fontSize: fontSize, fontWeight: fontWeight),
      decoration: InputDecoration(
        // counter: const SizedBox.shrink(),
        filled: true,
        fillColor: fillColor ?? Colors.white,
        prefixIcon: Padding(
          padding: EdgeInsets.only(bottom: (maxLines == 1 ? 0 : 60.0)),
          child: prefixIcon,
        ),
        suffixIcon: suffixIcon,
        suffixText: suffixText,
        contentPadding: (prefixIcon != null || suffixIcon != null)
            ? const EdgeInsets.only(top: 15)
            : EdgeInsets.only(top: paddingWithoutContent),
        suffixStyle: TextStyle(
          fontSize: suffixfontSize,
          fontWeight: fontWeight,
          color: suffixColor,
          fontFamily: GoogleFonts.poppins().fontFamily,
        ),
        hintStyle: TextStyle(
            fontSize: fontSize,
            fontFamily: GoogleFonts.poppins().fontFamily,
            color: const Color(0xFFABB3BB)),
        hintText: hintText,
        alignLabelWithHint: true,
        border: InputBorder.none,
      ),
    ),
  );
}
