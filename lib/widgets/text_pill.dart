import 'package:flutter/material.dart';

class MyTextPill extends StatelessWidget {
  final String text;
  final Color color;
  final Color? backgroundColor;
  final double? scale;

  const MyTextPill({super.key, required this.text, required this.color, this.backgroundColor = Colors.red, this.scale = 1});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6 * scale!),
      padding: EdgeInsets.symmetric(vertical: 2 * scale!, horizontal: 8 * scale!),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(15 * scale!),
      ),
      child: Text(
        text,
        style: TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: 12 * scale!),
      ),
    );
  }
}
