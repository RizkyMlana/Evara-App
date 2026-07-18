import 'package:evara_app/core/theme/app_text_styles.dart';
import 'package:evara_app/features/transaction/presentation/widgets/transaction_tile.dart';
import 'package:flutter/material.dart';

class RecentTransactionSection extends StatelessWidget{
  const RecentTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Recent Transaction",
          style: AppTextStyles.title,
        ),

        const SizedBox(height: 16,),

        // Dummy
        const TransactionTile(
          icon: Icons.restaurant, 
          title: "McDonald's", 
          date: "Today", 
          amount: "- Rp 75.000", 
          isIncome: false,
        ),
        const TransactionTile(
          icon: Icons.payment, 
          title: "Salary", 
          date: "Yesterday", 
          amount: "+ Rp 5.000.000", 
          isIncome: true,
        ),

        const TransactionTile(
          icon: Icons.shopping_bag, 
          title: "Uniqlo", 
          date: "2 days ago", 
          amount: "- Rp 350.000", 
          isIncome: false,
        ),
      ],
    );
  }
}