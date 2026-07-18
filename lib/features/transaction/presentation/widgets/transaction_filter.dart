import 'package:evara_app/core/theme/app_spacing.dart';
import 'package:flutter/material.dart';

class TransactionFilter extends StatelessWidget{
  const TransactionFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: "Search transaction....",
            prefixIcon: Icon(Icons.search)
          ),
        ),

        SizedBox(height: Spacing.md,),

        Row(
          children: [
            FilterChip(
              label: Text("All"), 
              selected: false,
              onSelected: (_) {}
            ),

            SizedBox(width: Spacing.md,),
            FilterChip(
              label: Text("Income"), 
              selected: false,
              onSelected: (_) {},
            ),

            SizedBox(width: Spacing.md,),
            FilterChip(
              label: Text("Expense"),
              selected: false, 
              onSelected: (_) {}
            ),

          ],
        )
      ],
    );
  }
}