import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/core/constants/constant_routes.dart';
import 'package:mobile/features/auth/register_page/presentations/pages/register_screen.dart';

mixin RegisterCubit on State<RegisterScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nipController = TextEditingController();
  final TextEditingController divisionController = TextEditingController();
  bool isPasswordVisible = true;

  String? selectedCompany;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    nipController.dispose();
    divisionController.dispose();
    super.dispose();
  }

  void onRegisterPressed(BuildContext context) {
    context.goNamed(ConstantRoutes.home);
  }

  void onLoginPressed(BuildContext context) {
    context.goNamed(ConstantRoutes.login);
  }

  void togglePasswordVisibility() {
    setState(() {
      isPasswordVisible = !isPasswordVisible;
    });
  }
}
