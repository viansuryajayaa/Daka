import 'package:flutter/material.dart';
import 'package:mobile/core/themes/app_spacing.dart';
import 'package:mobile/features/auth/register_page/presentations/cubit/register_cubit.dart';
import 'package:mobile/features/auth/widgets/apptextfield.dart';
import 'package:mobile/features/auth/widgets/authheader.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> with RegisterCubit {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Register')),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.containerMargin,
            ),
            child: Column(
              mainAxisAlignment: .start,
              crossAxisAlignment: .start,
              children: [
                SizedBox(height: AppSpacing.lg),
                AuthHeader(
                  title: 'Create Account',
                  subtitle:
                      'Sign up to create your account and start tracking your attendance efficiently',
                ),
                SizedBox(height: AppSpacing.lg),
                AppTextField(
                  textTitle: 'Full Name',
                  controller: nameController,
                  hintText: 'Enter your full name',
                  obscure: false,
                ),
                SizedBox(height: AppSpacing.md),
                AppTextField(
                  textTitle: 'Email',
                  controller: emailController,
                  hintText: 'Enter your email',
                  obscure: false,
                ),
                SizedBox(height: AppSpacing.md),
                Text('Company'),

                DropdownMenu<String>(
                  width: double.infinity,
                  inputDecorationTheme: Theme.of(context).inputDecorationTheme,
                  hintText: 'Select your company',
                  initialSelection: selectedCompany,

                  dropdownMenuEntries: [
                    DropdownMenuEntry(value: 'Company A', label: 'Company A'),
                    DropdownMenuEntry(value: 'Company B', label: 'Company B'),
                    DropdownMenuEntry(value: 'Company C', label: 'Company C'),
                  ],

                  onSelected: (value) {
                    setState(() {
                      selectedCompany = value;
                    });
                  },
                ),
                SizedBox(height: AppSpacing.md),

                AppTextField(
                  textTitle: 'NIP',
                  controller: nipController,
                  hintText: 'Enter your NIP',
                  obscure: false,
                ),
                SizedBox(height: AppSpacing.md),
                AppTextField(
                  textTitle: 'Division',
                  controller: divisionController,
                  hintText: 'Enter your division',
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

                SizedBox(height: AppSpacing.md),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => onRegisterPressed(context),
                    child: Text('Register'),
                  ),
                ),
                Row(
                  mainAxisAlignment: .center,
                  children: [
                    Text('Already have an account?'),
                    TextButton(
                      onPressed: () => onLoginPressed(context),
                      child: Text('Login'),
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
