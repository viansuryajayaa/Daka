import 'package:flutter/material.dart';
import 'package:mobile/core/themes/app_colors.dart';
import 'package:mobile/features/splash/presentations/cubit/splash_cubit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin, SplashCubit {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          crossAxisAlignment: .center,
          children: [
            Image.asset('assets/images/logo.png'),
            AnimatedBuilder(
              animation: progressController,
              builder: (context, asyncSnapshot) {
                return Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: LinearProgressIndicator(
                      backgroundColor: AppColors.surfaceContainer,
                      value: progressController.value,
                      minHeight: 5,
                      color: AppColors.punchInGreen,
                    ),
                  ),
                );
              },
            ),
            Text(
              'Mindful Efficiency',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ],
        ),
      ),
    );
  }
}
