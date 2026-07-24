import 'package:evara_app/core/theme/app_spacing.dart';
import 'package:evara_app/features/invitation/presentation/widgets/empty_invitation.dart';
import 'package:flutter/material.dart';

class InvitationPage extends StatelessWidget{
  const InvitationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Invitations"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(Spacing.lg),
        child: EmptyInvitation(),
      ),
    );
  }
}