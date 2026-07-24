import 'package:evara_app/core/theme/app_spacing.dart';
import 'package:evara_app/core/theme/app_text_styles.dart';
import 'package:evara_app/features/family/presentation/widgets/create_family_button.dart';
import 'package:evara_app/features/family/presentation/widgets/family_description_field.dart';
import 'package:evara_app/features/family/presentation/widgets/family_name_field.dart';
import 'package:flutter/material.dart';

class CreateFamilyPage extends StatelessWidget{
  const CreateFamilyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Family"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(Spacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Let's create your family group",
              style: AppTextStyles.body,
            ),

            SizedBox(height: Spacing.xl,),
            FamilyNameField(),
            SizedBox(height: Spacing.lg,),
            FamilyDescriptionField(),
            SizedBox(height: Spacing.xxl,),
            CreateFamilyButton(),

          ],
        ),
      ),
    );
  }
}