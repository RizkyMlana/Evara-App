import 'package:flutter/material.dart';

class InviteMemberButton extends StatelessWidget{
  const InviteMemberButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: FilledButton.icon(
        onPressed: () {}, 
        label: const Text("Invite Member"),
        icon: const Icon(Icons.person_add_alt_1),
      ),
    );
  }
}