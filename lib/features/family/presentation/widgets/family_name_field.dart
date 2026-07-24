import 'package:evara_app/core/theme/app_spacing.dart';
import 'package:evara_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class FamilyNameField extends StatelessWidget{
  const FamilyNameField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Family Name",
          style: AppTextStyles.title,
        ),

        const SizedBox(height: Spacing.sm,),

        const TextField(
          decoration: InputDecoration(
            hintText: "Enter Family name",
          ),
        )
      ],
    );
  }
}