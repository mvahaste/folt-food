import 'package:flutter/material.dart';

extension StringEllipsis on String {
  String tight() {
    return Characters(this).replaceAll(Characters(' '), Characters('\u{000A0}')).toString();
  }
}
