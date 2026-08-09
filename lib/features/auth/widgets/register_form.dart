import 'package:evara_app/core/router/routes.dart';
import 'package:evara_app/core/theme/app_colors.dart';
import 'package:evara_app/core/theme/app_icons.dart';
import 'package:evara_app/core/theme/app_spacing.dart';
import 'package:evara_app/core/theme/app_text_styles.dart';
import 'package:evara_app/core/widgets/app_button.dart';
import 'package:evara_app/core/widgets/app_logo.dart';
import 'package:evara_app/core/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';


class RegisterForm extends StatefulWidget{
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}
class _RegisterFormState extends State<RegisterForm> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
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
            const AppLogo(size: 90,),
            const SizedBox(height: Spacing.xl,),

            Text(
              "Create Account",
              textAlign: TextAlign.center,
              style: AppTextStyles.heading2,
            ),

            const SizedBox(
              height: Spacing.sm,
            ),
            Text(
              "Create your Evara Account",
              textAlign: TextAlign.center,
              style: AppTextStyles.bodySmall,
            ),

            const SizedBox(height: Spacing.xl,),

            AppTextField(
              controller: nameController, 
              label: "Full Name",
              prefixIcon: const Icon(Icons.person_outlined)
            ),
            
            const SizedBox(height: Spacing.md,),

            AppTextField(
              controller: emailController, 
              label: "Email",
              keyboardType: TextInputType.emailAddress,
              prefixIcon: const Icon(Icons.email_outlined),
            ),

            const SizedBox(height: Spacing.md,),

            AppTextField(
              controller: passwordController, 
              label: "Password",
              obscureText: true,
              prefixIcon: const Icon(Icons.lock_outline),
            ),

            const SizedBox(height: Spacing.md,),

            AppTextField(
              controller: confirmPasswordController, 
              label: "Confirm Password",
              obscureText: true,
              prefixIcon: const Icon(Icons.lock_outline),
            ),

            const SizedBox(height: Spacing.xl,),

            AppButton(
              text: "Create Account", 
              onPressed: () {},
            ),
            
            const SizedBox(height: Spacing.lg,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account?"),
                TextButton(
                  onPressed: () {
                    context.go(AppRoutes.login);
                  }, 
                  child: const Text("Login")),
              ],
            )

          ],
        ),),
      ),
    );
  }
}