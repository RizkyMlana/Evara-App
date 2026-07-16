import 'package:evara_app/core/theme/app_colors.dart';
import 'package:evara_app/core/theme/app_spacing.dart';
import 'package:evara_app/core/theme/app_text_styles.dart';
import 'package:evara_app/core/utils/greeting_helper.dart';
import 'package:flutter/material.dart';

class DashboardHeader extends StatelessWidget{
  const DashboardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 24,
          backgroundColor: AppColors.primary,
          child: Icon(
            Icons.person,
            color: Colors.white,
          ),
        ),
        const SizedBox(width: Spacing.md,),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                GreetingHelper.getGreeting(),
                style: AppTextStyles.bodySmall,
              ),

              const SizedBox(height: Spacing.xs,),

              Text(
                "MLaana",
                style: AppTextStyles.heading2,
              )
            ],
          ),
        ),
        IconButton(
          onPressed: () {}, 
          icon: const Icon(Icons.notifications_none_rounded),
        )
      ],
    );
  }
}