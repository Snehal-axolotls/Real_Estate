import 'package:flutter/material.dart';
import 'package:real_estate/common/custom_text.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final double height;
  final double width;
  final Color color;
  final Color fontColor;
  final double borderRadius;
  final double fontSize;


  const CustomButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.height = 55.32,
    this.width = 379,
    this.color = const Color.fromRGBO(33, 90, 146, 1),
    this.fontColor = Colors.white,
    this.borderRadius = 7.0,
    this.fontSize=18
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Container(
          height: height,
          width: width,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
            color: color,
          ),
          child: CustomText(
            text : text,
              fontWeight: FontWeight.w600,
              fontSize: fontSize,
              color: fontColor,
            
          ),
        ),
      ),
    );
  }
}