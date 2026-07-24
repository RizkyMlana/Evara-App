import 'package:evara_app/core/theme/app_spacing.dart';
import 'package:evara_app/features/invitation/presentation/widgets/invitation_card.dart';
import 'package:flutter/material.dart';

class InvitationList extends StatelessWidget{
  const InvitationList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 5,
      separatorBuilder: (_, _) =>
      const SizedBox(height: Spacing.md,),
      itemBuilder: (_, _) => const InvitationCard(),
    );
  }
}