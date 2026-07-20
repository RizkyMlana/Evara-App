import 'package:evara_app/core/theme/app_spacing.dart';
import 'package:evara_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class NoteField extends StatelessWidget{
  const NoteField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Notes",
          style: AppTextStyles.title,
        ),

        const SizedBox(height: Spacing.sm,),

        TextFormField(
          maxLines: 4,
          decoration: const InputDecoration(
            hintText: "Add a note (optional)",
            alignLabelWithHint: true,
            border: OutlineInputBorder(),
          ),
        )
      ],

    );
  }
}