import 'package:evara_app/core/theme/app_colors.dart';
import 'package:evara_app/core/theme/app_icons.dart';
import 'package:evara_app/core/theme/app_spacing.dart';
import 'package:evara_app/features/dashboard/presentation/widgets/summary_item.dart';
import 'package:flutter/material.dart';

class SummaryCard extends StatelessWidget{
  const SummaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SummaryItem(
          title: "Income", 
          amount: "Rp. 5.000.000", 
          icon: AppIcons.arrowUpward, 
          color: AppColors.income
        ),

        SizedBox(width: Spacing.md,),

        SummaryItem(
          title: "Expense", 
          amount: "Rp. 2.000.000", 
          icon: AppIcons.arrowDownward, 
          color: AppColors.expense
        )
      ],
    );
  }
}