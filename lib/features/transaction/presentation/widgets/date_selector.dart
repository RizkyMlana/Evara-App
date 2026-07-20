import 'package:evara_app/core/theme/app_spacing.dart';
import 'package:evara_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class DateSelector extends StatelessWidget{
  const DateSelector({super.key});


  Future<void> _pickDate(BuildContext context) async {
    await showDatePicker(
      context: context, 
      firstDate: DateTime(2020), 
      lastDate: DateTime(2100),
      initialDate: DateTime.now(),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:  CrossAxisAlignment.start,
      children: [
        Text(
          "Date",
          style: AppTextStyles.title,
        ),

        const SizedBox(height: Spacing.sm,),

        InkWell(
          onTap: () => _pickDate(context),
          borderRadius: BorderRadius.circular(12),
          child: InputDecorator(
            decoration: InputDecoration(
              border: OutlineInputBorder()
            ),
            child: const Row(
              children: [
                Icon(Icons.calendar_today_outlined),
                SizedBox(width: Spacing.md,),
                Expanded(
                  child: Text("Today")
                ),
                Icon(Icons.chevron_right)
              ],
            ),
          ),

        )
      ],
    );
  }
}