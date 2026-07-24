import 'package:evara_app/core/theme/app_spacing.dart';
import 'package:evara_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget{
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(
          radius: 45,
          child: Icon(Icons.person, size: 40,),
        ),

        const SizedBox(height: Spacing.md,),

        Text(
          "Mlaana",
          style: AppTextStyles.heading2,
        ),

        const SizedBox(height: Spacing.xs,),

        Text(
          "mlaana@example.com",
          style: AppTextStyles.bodySmall,
        )
      ],
    );
  }
}