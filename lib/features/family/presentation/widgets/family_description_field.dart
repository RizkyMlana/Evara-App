import 'package:evara_app/core/theme/app_spacing.dart';
import 'package:evara_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class FamilyDescriptionField extends StatelessWidget{
  const FamilyDescriptionField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Description (optional)",
          style: AppTextStyles.title,
        ),

        const SizedBox(height: Spacing.sm,),

        const TextField(
          maxLines: 3,
          decoration: InputDecoration(
            hintText: "Tell us about this family",
          ),
        )
      ],
    );
  }
}