import 'package:flutter/material.dart';

class AppShadows {
  AppShadows._();

  static final level1 = [
    BoxShadow(
      color: Colors.black.withOpacity(0.05),
      blurRadius: 4,
      offset: const Offset(0, 2),
    ),
  ];

  static final level2 = [
    BoxShadow(
      color: Colors.black.withOpacity(0.10),
      blurRadius: 12,
      offset: const Offset(0, 4),
    ),
  ];
}
