import 'package:evara_app/core/theme/app_colors.dart';
import 'package:evara_app/core/theme/app_icons.dart';
import 'package:evara_app/core/theme/app_spacing.dart';
import 'package:evara_app/core/theme/app_text_styles.dart';
import 'package:evara_app/core/utils/greeting_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DashboardHeader extends StatelessWidget{
  const DashboardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 24,
          backgroundColor: AppColors.primary,
          child: SvgPicture.asset(
            AppIcons.person,
            width: 24,
            height: 24,
            colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
          )
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
          icon: SvgPicture.asset(
            AppIcons.notificationOutline,
            width: 24,
            height: 24,
          ),
        )
      ],
    );
  }
}