import 'package:flutter/material.dart';

class JoinFamilyButton extends StatelessWidget{
  const JoinFamilyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: FilledButton(
        onPressed: () {}, 
        child: const Text("Join Family")
      ),
    );
  }
}