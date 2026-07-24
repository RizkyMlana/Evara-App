import 'package:evara_app/core/theme/app_spacing.dart';
import 'package:evara_app/core/theme/app_text_styles.dart';
import 'package:evara_app/features/family/presentation/widgets/empty_family.dart';
import 'package:flutter/material.dart';

class FamilyPage extends StatelessWidget{
  const FamilyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(Spacing.lg),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Family",
                style: AppTextStyles.heading2,
              ),

              SizedBox(height: Spacing.xl,),

              Expanded(
                child: EmptyFamily())
            ],
          ),
        )
      ),
    );
  }
}