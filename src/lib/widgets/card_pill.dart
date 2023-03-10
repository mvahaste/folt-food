import 'package:flutter/material.dart';

class MyCardPill extends StatelessWidget {
  final String text;
  final Color color;
  final double? scale;

  const MyCardPill({super.key, required this.text, required this.color, this.scale = 1});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8 * scale!),
      padding: EdgeInsets.symmetric(vertical: 5 * scale!, horizontal: 8 * scale!),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15 * scale!),
      ),
      child: Text(
        text,
        style: TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: 12 * scale!),
      ),
    );
  }
}
