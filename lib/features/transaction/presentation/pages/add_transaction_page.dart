import 'package:evara_app/core/theme/app_spacing.dart';
import 'package:flutter/material.dart';

class AddTransactionPage extends StatelessWidget{
  const AddTransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Transaction"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(Spacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            
          ],
        ),
      )
    );
  }
}