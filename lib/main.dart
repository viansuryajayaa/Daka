import 'package:flutter/material.dart';
import 'package:mobile/core/themes/app_theme.dart';
import 'package:mobile/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      routerConfig: Routes.routerConfig,
      debugShowCheckedModeBanner: false,
    );
  }
}
