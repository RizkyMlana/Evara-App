import 'package:flutter/material.dart';

class CreateFamilyButton extends StatelessWidget{
  const CreateFamilyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: FilledButton(
        onPressed: () {}, 
        child: const Text("Create Family")
      ),
    );
  }
}