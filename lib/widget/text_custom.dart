import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  final TextOverflow textOverflow;
  final int? maxLine;
  final TextAlign? textAlign;

  const CustomText({
    super.key,
    required this.text,
    this.fontSize = 16,
    this.color = Colors.black,
    this.fontWeight = FontWeight.w500,
    this.textOverflow = TextOverflow.visible,
    this.maxLine,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: textOverflow,
      maxLines: maxLine,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}
