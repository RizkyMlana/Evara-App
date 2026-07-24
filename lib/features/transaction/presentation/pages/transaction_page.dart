import 'package:evara_app/core/theme/app_spacing.dart';
import 'package:evara_app/core/theme/app_text_styles.dart';
import 'package:evara_app/features/transaction/presentation/widgets/transaction_filter.dart';
import 'package:evara_app/features/transaction/presentation/widgets/transaction_list.dart';
import 'package:flutter/material.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(Spacing.lg),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Transactions",
                style: AppTextStyles.heading2,
              ),

              const SizedBox(height: Spacing.lg),

              const TransactionFilter(),

              const SizedBox(height: Spacing.lg),

              const Expanded(
                child: TransactionList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}