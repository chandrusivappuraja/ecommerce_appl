import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({
    super.key,
    required this.text,
    this.fontType,
    this.customcolor,
    this.customweight,
  });

  final String text;
  final FontType? fontType;
  final Color? customcolor;
  final FontWeight? customweight;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: getFont(fontType ?? FontType.big, customcolor, customweight));
  }
}

enum FontType {
  big,
  medium,
  small,
  custom,
}

TextStyle getFont(
    FontType fontType, Color? customcolor, FontWeight? customweight) {
  switch (fontType) {
    case FontType.big:
      return TextStyle(
        fontSize: 26,
        fontFamily: 'poppins',
        fontWeight: customweight ?? FontWeight.w400,
        color: customcolor ?? Colors.black,
      );
    case FontType.medium:
      return TextStyle(
        fontSize: 16,
        fontFamily: 'poppins',
        fontWeight: customweight ?? FontWeight.w400,
        color: customcolor ?? Colors.black,
      );
    case FontType.small:
      return TextStyle(
        fontSize: 13,
        fontFamily: 'poppins',
        fontWeight: customweight ?? FontWeight.w400,
        color: customcolor ?? const Color.fromARGB(255, 39, 38, 38),
      );

    default:
      return TextStyle(
        fontSize: 20,
        fontFamily: 'poppins',
        fontWeight: FontWeight.bold,
        color: customcolor ?? Colors.black,
      );
  }
}
