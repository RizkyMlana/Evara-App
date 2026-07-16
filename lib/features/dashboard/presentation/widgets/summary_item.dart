import 'package:evara_app/core/theme/app_radius.dart';
import 'package:evara_app/core/theme/app_spacing.dart';
import 'package:evara_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class SummaryItem extends StatelessWidget{
  final String title;
  final String amount;
  final IconData icon;
  final Color color;

  const SummaryItem({
    super.key,
    required this.title,
    required this.amount,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(Spacing.md),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppRadius.md),
          border: Border.all(color: Colors.grey.shade200),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 18,
              backgroundColor: color.withValues(alpha: 0.1),
              child: Icon(
                icon,
                color: color,
              ),
            ),

            const SizedBox(height: Spacing.xs,),

            Text(
              amount,
              style: AppTextStyles.heading2,
            )
          ],
        ),
      ),
    );
  }
}