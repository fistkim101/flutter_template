import 'package:flutter/material.dart';

extension StringExtension on String {
  Color convertToColorFromHex() {
    final hexCode = replaceAll('#', '');
    return Color(int.parse('FF$hexCode', radix: 16));
  }

  String limitTo(int limit) {
    return (length <= limit) ? this : '${substring(0, limit)}...';
  }
}
