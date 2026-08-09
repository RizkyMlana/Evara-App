import 'package:evara_app/core/theme/app_colors.dart';
import 'package:evara_app/core/theme/app_icons.dart';
import 'package:evara_app/core/theme/app_spacing.dart';
import 'package:evara_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EmptyFamily extends StatelessWidget{
  const EmptyFamily({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            AppIcons.group2,
            width: 36,
            height: 36,
            colorFilter: ColorFilter.mode(AppColors.primary, BlendMode.srcIn),
          ),

          const SizedBox(height: Spacing.lg,),

          Text(
            "No Family Yet",
            style: AppTextStyles.heading2,
          ),

          const SizedBox(height: Spacing.sm,),

          Text(
            "Create a family or join one using an invitation code.",
            textAlign: TextAlign.center,
            style: AppTextStyles.body,
          ),

          const SizedBox(height: Spacing.xl,),

          FilledButton.icon(
            onPressed: () {},
            icon: SvgPicture.asset(
              AppIcons.add,
              width: 24,
              height: 24,
              colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
            label: const Text("Create Family"),
          ),

          const SizedBox(height: Spacing.md,),

          OutlinedButton.icon(
            onPressed: () {}, 
            label: const Text("Join Family"),
            icon: SvgPicture.asset(
              AppIcons.login,
              width: 24,
              height: 24,
              colorFilter: ColorFilter.mode(AppColors.primary, BlendMode.srcIn),
            ),
          )
        ],
      ),
    );
  }
}