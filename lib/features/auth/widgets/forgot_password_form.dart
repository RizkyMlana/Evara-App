import 'package:evara_app/core/router/routes.dart';
import 'package:evara_app/core/theme/app_text_styles.dart';
import 'package:evara_app/core/widgets/app_button.dart';
import 'package:evara_app/core/widgets/app_logo.dart';
import 'package:evara_app/core/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:evara_app/core/theme/app_spacing.dart';
import 'package:go_router/go_router.dart';


class ForgotPasswordForm extends StatefulWidget{
  const ForgotPasswordForm({super.key});

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}
class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(Spacing.lg),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 420),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const AppLogo(size: 90),

              const SizedBox(height: Spacing.xl),
              Text(
                "Forgot Password",
                textAlign: TextAlign.center,
                style: AppTextStyles.heading2,
              ),

              const SizedBox(height: Spacing.sm,),
              Text(
                "Enter your email address and we'll send you a password reset link",
                textAlign: TextAlign.center,
                style: AppTextStyles.bodySmall,
              ),

              const SizedBox(height: Spacing.xxl,),
              AppTextField(
                controller: emailController, 
                label: "Email",
                hint: "example@gmail.com",
                keyboardType: TextInputType.emailAddress,
                prefixIcon: const Icon(Icons.email_outlined),
              ),

              const SizedBox(height: Spacing.xl,),
              AppButton(
                text: "Send Reset Link", 
                onPressed: () {

                }
              ),
              
              const SizedBox(height: Spacing.lg,),
              TextButton.icon(
                onPressed: () {
                  context.go(AppRoutes.login);
                }, 
                icon: const Icon(Icons.arrow_back),
                label: const Text("Back to Login"),
                
              ),
            ],
          ),),
      ),
    );
  }
}