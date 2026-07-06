import 'package:evara_app/core/theme/app_spacing.dart';
import 'package:evara_app/core/widgets/app_logo.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget{
  const LoginForm({super.key});
  
  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: ConstrainedBox(constraints: const BoxConstraints(maxWidth: 420),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const AppLogo(size: 90),
            const SizedBox(height: AppSpacing.xl,)
          ],
        ),),
      ),
    );
  }
}