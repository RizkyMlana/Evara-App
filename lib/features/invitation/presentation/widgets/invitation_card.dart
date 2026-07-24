import 'package:evara_app/core/theme/app_spacing.dart';
import 'package:evara_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class InvitationCard extends StatelessWidget{
  const InvitationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(Spacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "The Mlaana Family",
              style: AppTextStyles.title,
            ),

            const SizedBox(height: Spacing.sm,),

            Text(
              "Invited by John Doe",
              style: AppTextStyles.bodySmall,
            ),

            const SizedBox(height: Spacing.lg,),

            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {}, 
                    child: const Text("Decline")
                  )
                ),

                const SizedBox(width: Spacing.md,),

                Expanded(
                  child: FilledButton(
                    onPressed: () {}, 
                    child: const Text("Accept")
                  )
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}