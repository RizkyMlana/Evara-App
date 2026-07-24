import 'package:evara_app/core/theme/app_spacing.dart';
import 'package:evara_app/features/dashboard/presentation/widgets/balance_card.dart';
import 'package:evara_app/features/dashboard/presentation/widgets/dashboard_header.dart';
import 'package:evara_app/features/dashboard/presentation/widgets/recent_transaction_section.dart';
import 'package:evara_app/features/dashboard/presentation/widgets/summary_card.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget{
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            DashboardHeader(),
            SizedBox(height: Spacing.lg,),
            BalanceCard(),
            SizedBox(height: Spacing.lg,),
            SummaryCard(),
            SizedBox(height: Spacing.lg,),
            RecentTransactionSection(),
            
          ],
        ),
      )
    );
  }
}