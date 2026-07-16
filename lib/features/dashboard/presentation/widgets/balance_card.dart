import 'package:evara_app/core/theme/app_colors.dart';
import 'package:evara_app/core/theme/app_radius.dart';
import 'package:evara_app/core/theme/app_spacing.dart';
import 'package:evara_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(Spacing.lg),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(AppRadius.lg)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Total Balance",
            style: AppTextStyles.bodySmall.copyWith(
              color: Colors.white70,
            ),
          ),
          

          const SizedBox(height: Spacing.sm,),
          // dummy
          Text(
            "Rp. 12.500.000",
            style: AppTextStyles.heading1.copyWith(
              color: Colors.white,
            ),
          ),

          const SizedBox(height: Spacing.lg,),
          Text(
            "Last Updated: Today",
            style: AppTextStyles.bodySmall.copyWith(
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}