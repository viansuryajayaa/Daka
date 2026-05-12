import 'package:flutter/material.dart';
import 'package:mobile/core/themes/app_spacing.dart';
import 'package:mobile/features/auth/login_page/presentations/cubit/login_cubit.dart';
import 'package:mobile/features/auth/widgets/apptextfield.dart';
import 'package:mobile/features/auth/widgets/authheader.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with LoginCubit {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.containerMargin,
            ),
            child: Column(
              crossAxisAlignment: .start,
              children: [
                SizedBox(height: AppSpacing.xxl),
                AuthHeader(
                  title: 'Welcome Back!',
                  subtitle:
                      'Sign in to access your dashboard and continue tracking your attendance efficiently',
                ),
                SizedBox(height: AppSpacing.lg),
                AppTextField(
                  textTitle: 'Email',
                  controller: emailController,
                  hintText: 'Enter your email',
                  obscure: false,
                ),
                SizedBox(height: AppSpacing.md),
                AppTextField(
                  textTitle: 'Password',
                  controller: passwordController,
                  hintText: '••••••••',
                  obscure: isPasswordVisible,
                  suffixIcon: Icon(
                    isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                  ),
                  onSuffixIconPressed: togglePasswordVisibility,
                ),
                SizedBox(height: AppSpacing.lg),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => onLoginPressed(context),
                    child: Text('Login'),
                  ),
                ),
                Row(
                  mainAxisAlignment: .center,
                  children: [
                    Text('Don\'t have an account?'),
                    TextButton(
                      onPressed: () => onRegisterPressed(context),
                      child: Text('Register'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
