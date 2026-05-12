import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/core/constants/constant_routes.dart';
import 'package:mobile/features/splash/presentations/pages/splash_screen.dart';

mixin SplashCubit on State<SplashScreen> {
  late AnimationController progressController;

  @override
  void initState() {
    super.initState();

    progressController = AnimationController(
      vsync: this as TickerProvider,
      duration: const Duration(seconds: 2),
    )..forward();
    // initAfterLayout
    WidgetsBinding.instance.endOfFrame.then((value) async {
      await Future.delayed(Duration(seconds: 2));

      if (mounted) context.go(ConstantRoutes.login);
    });
  }

  @override
  void dispose() {
    progressController.dispose();
    super.dispose();
  }
}
