import 'package:flutter/material.dart';

class SaveTransactionButton extends StatelessWidget{
  const SaveTransactionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, 
      height: 52,
      child: FilledButton(
        onPressed: () {}, 
        child: const Text("Save Transaction")
      ),
    );
  }

}