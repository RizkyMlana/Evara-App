import 'package:flutter/material.dart';

class AppShadow {
  AppShadow._();

  static List<BoxShadow> get card => [
    BoxShadow(
      color: Colors.black.withValues(alpha: 0.05),
      blurRadius: 12,
      offset: const Offset(0, 4),
    ),
  ];
}