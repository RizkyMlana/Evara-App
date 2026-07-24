import 'package:evara_app/core/router/routes.dart';
import 'package:evara_app/core/theme/app_spacing.dart';
import 'package:evara_app/core/theme/app_text_styles.dart';
import 'package:evara_app/core/widgets/app_button.dart';
import 'package:evara_app/core/widgets/app_logo.dart';
import 'package:evara_app/core/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
        padding: const EdgeInsets.all(Spacing.lg),
        child: ConstrainedBox(constraints: const BoxConstraints(maxWidth: 420),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const AppLogo(size: 90),
            const SizedBox(height: Spacing.xl),

            Text(
              "Welcome Back",
              textAlign: TextAlign.center,
              style: AppTextStyles.heading2,
            ),

            const SizedBox(
              height: Spacing.md,
            ),
            Text(
              "Login to Continue",
              textAlign: TextAlign.center,
              style: AppTextStyles.bodySmall,
            ),

            const SizedBox(height: Spacing.xxl),

            AppTextField(
              controller: emailController, 
              label: "Email",
              hint: "example@email.com",
              keyboardType: TextInputType.emailAddress,
              prefixIcon: Icons.email_outlined,
            ),

            const SizedBox(height: Spacing.md),

            AppTextField(
              controller: passwordController, 
              label: "Password",
              obscureText: true,
              prefixIcon: Icons.lock_outline,
            ),

            const SizedBox(height: Spacing.lg,),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  context.go(AppRoutes.forgotPassword);
                }, 
                child: const Text("Forgot Password")),
            ),

            const SizedBox(height: Spacing.xl,),

            AppButton(
              text: "Login", 
              onPressed: () {
                context.go(AppRoutes.dashboard);
              },
            ),

            const SizedBox(height: Spacing.lg),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?"),
                TextButton(
                  onPressed: () {
                    context.go(AppRoutes.register);
                  }, 
                  child: const Text("Register"),
                )
              ],
            ),
            
          ],
        ),),
      ),
    );
  }
}