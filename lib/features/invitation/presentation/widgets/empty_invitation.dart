import 'package:evara_app/core/theme/app_spacing.dart';
import 'package:evara_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class EmptyInvitation extends StatelessWidget{
  const EmptyInvitation({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.mail_outline_rounded,
            size: 90,
          ),

          const SizedBox(height: Spacing.lg,),

          Text(
            "No Invitations",
            style: AppTextStyles.heading2,
          ),

          const SizedBox(height: Spacing.sm,),

          Text(
            "You don't have any pending family invitation",
            textAlign: TextAlign.center,
            style: AppTextStyles.body,
          )
        ],
      ),
    );
  }
}