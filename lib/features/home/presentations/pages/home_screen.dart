import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/core/themes/app_spacing.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.containerMargin),
          child: Column(
            children: [
              HomeHeader(),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  context.pushNamed('detail');
                },
                child: Text('Detail'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: .start,
          children: [
            Text('Selamat Pagi, '),
            Text(
              'Vian Suryajaya',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
        Spacer(),
        CircleAvatar(
          radius: 24,
          backgroundImage: AssetImage('assets/images/profile.png'),
        ),
      ],
    );
  }
}
