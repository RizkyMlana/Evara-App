import 'package:evara_app/features/dashboard/presentation/widgets/transaction_tile.dart';
import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget{
  const TransactionList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const[

        TransactionTile(
          icon: Icons.restaurant, 
          title: "McDonald's", 
          date: "Today", 
          amount: "- Rp75.000", 
          isIncome: false
        ),
        TransactionTile(
          icon: Icons.payments,
          title: "Salary",
          date: "Yesterday",
          amount: "+ Rp5.000.000",
          isIncome: true,
        ),

        TransactionTile(
          icon: Icons.shopping_bag,
          title: "Uniqlo",
          date: "2 days ago",
          amount: "- Rp350.000",
          isIncome: false,
        ),

      ],
    );
  }
}