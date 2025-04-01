import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final TextDecoration? decoration;
  final bool softWrap;
  final TextOverflow? overflow;

  const CustomText({
    required this.text,
    this.textAlign = TextAlign.start,
    this.fontSize = 21.0,
    this.fontWeight = FontWeight.w600,
    this.color = Colors.black,
    this.decoration,
    this.softWrap = false,
    this.overflow,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.dmSans(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        decoration: decoration,
      ),
      
    );
  }
}
