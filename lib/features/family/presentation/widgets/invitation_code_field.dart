import 'package:evara_app/core/theme/app_spacing.dart';
import 'package:evara_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class InvitationCodeField extends StatelessWidget{
  const InvitationCodeField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Invitation Code",
          style: AppTextStyles.title,
        ),

        const SizedBox(height: Spacing.sm,),

        const TextField(
          textCapitalization: TextCapitalization.characters,
          decoration: InputDecoration(
            hintText: "ABCD-1234"
          ),
        )
      ],
    );
  }
}