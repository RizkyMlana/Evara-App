import 'package:evara_app/core/theme/app_spacing.dart';
import 'package:evara_app/core/theme/app_text_styles.dart';
import 'package:evara_app/features/family/presentation/widgets/invitation_code_field.dart';
import 'package:evara_app/features/family/presentation/widgets/join_family_button.dart';
import 'package:evara_app/features/family/presentation/widgets/scan_qr_button.dart';
import 'package:flutter/material.dart';

class JoinFamilyPage extends StatelessWidget{
  const JoinFamilyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Join Family"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(Spacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Join an existing family using an invitation code.",
              style: AppTextStyles.body,
            ),

            SizedBox(height: Spacing.xl,),

            InvitationCodeField(),

            SizedBox(height: Spacing.xl,),

            ScanQrButton(),
            
            SizedBox(height: Spacing.xxl,),
            
            JoinFamilyButton(),
          ],
        ),
      ),
    );
  }
}