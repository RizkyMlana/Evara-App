import 'package:evara_app/core/router/routes.dart';
import 'package:evara_app/core/theme/app_spacing.dart';
import 'package:evara_app/core/theme/app_text_styles.dart';
import 'package:evara_app/core/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class EmailSentBody extends StatelessWidget{
  const EmailSentBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(Spacing.lg),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 420),
          child: Column(
            children: [
              const Icon(
                Icons.mark_email_read_outlined,
                size: 100,
              ),

              const SizedBox(height: Spacing.xl,),
              Text(
                "Check your Email",
                style: AppTextStyles.heading2,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: Spacing.md,),
              Text(
                "We've sent an email with further instructions. Please check your inbox and spam folder.",
                style: AppTextStyles.bodySmall,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: Spacing.xl,),
              AppButton(
                text: "Back to Login", 
                onPressed: () {
                  context.go(AppRoutes.login);
                }
              )
            ],
          ),
        ),
      ),
    );
  }
}
