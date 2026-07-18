import 'package:evara_app/core/theme/app_spacing.dart';
import 'package:evara_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AmountField extends StatelessWidget{
  const AmountField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Amount",
          style: AppTextStyles.title,
        ),

        const SizedBox(height: Spacing.sm,),
        TextFormField(
          style: AppTextStyles.heading1,
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly
          ],
          decoration: const InputDecoration(
            border: InputBorder.none,
            prefixText: "Rp ",
            hintText: "0"
          ),
        )
      ],
    );
  }
}