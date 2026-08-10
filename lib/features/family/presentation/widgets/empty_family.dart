import 'package:evara_app/core/theme/app_colors.dart';
import 'package:evara_app/core/theme/app_icons.dart';
import 'package:evara_app/core/theme/app_spacing.dart';
import 'package:evara_app/core/theme/app_text_styles.dart';
import 'package:evara_app/core/widgets/app_icon.dart';
import 'package:flutter/material.dart';

class EmptyFamily extends StatelessWidget{
  const EmptyFamily({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppIcon(
            asset: AppIcons.group2,
            color: AppColors.primary,
            size: 36,
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
            icon: AppIcon(asset: AppIcons.add, color: Colors.white),
            label: const Text("Create Family"),
          ),

          const SizedBox(height: Spacing.md,),

          OutlinedButton.icon(
            onPressed: () {}, 
            label: const Text("Join Family"),
            icon: AppIcon(asset: AppIcons.login, color: AppColors.primary),
          )
        ],
      ),
    );
  }
}