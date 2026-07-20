import 'package:evara_app/core/theme/app_spacing.dart';
import 'package:evara_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class CategorySelector extends StatelessWidget{
  const CategorySelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Category",
          style: AppTextStyles.title,
        ),

        const SizedBox(height: Spacing.sm,),

        InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(12),
          child: InputDecorator(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
            child: const Row(
              children: [
                CircleAvatar(
                  radius: 18,
                  child: Text("🍔"),
                ),

                SizedBox(width: Spacing.md,),

                Expanded(
                  child: Text("Food"),
                ),

                Icon(Icons.chevron_right)
              ],
            ),
          ),
        ),


      ],
    );
  }
}