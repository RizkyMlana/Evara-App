import 'package:evara_app/core/theme/app_colors.dart';
import 'package:evara_app/core/theme/app_icons.dart';
import 'package:evara_app/core/theme/app_spacing.dart';
import 'package:evara_app/core/theme/app_text_styles.dart';
import 'package:evara_app/core/utils/greeting_helper.dart';
import 'package:evara_app/core/widgets/app_icon.dart';
import 'package:flutter/material.dart';

class DashboardHeader extends StatelessWidget{
  const DashboardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 24,
          backgroundColor: AppColors.primary,
          child: AppIcon(
            asset:AppIcons.person,
            color: Colors.white,)
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
          icon: AppIcon(
            asset: AppIcons.notificationOutline,
            color: AppColors.primary,
            )
        )
      ],
    );
  }
}