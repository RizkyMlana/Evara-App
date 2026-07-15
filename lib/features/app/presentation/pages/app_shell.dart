import 'package:evara_app/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:evara_app/features/family/presentation/pages/family_page.dart';
import 'package:evara_app/features/profile/presentation/pages/profile_page.dart';
import 'package:evara_app/features/transaction/presentation/pages/transaction_page.dart';
import 'package:flutter/material.dart';

class AppShell extends StatefulWidget{
  const AppShell({super.key});

  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    DashboardPage(),
    TransactionPage(),
    FamilyPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.dashboard_outlined),
            selectedIcon: Icon(Icons.dashboard), 
            label: "Dashboard"
          ),
          NavigationDestination(
            icon: Icon(Icons.receipt_long_outlined),
            selectedIcon: Icon(Icons.receipt_long), 
            label: "Transaction"
          ),
          NavigationDestination(
            icon: Icon(Icons.groups_outlined),
            selectedIcon: Icon(Icons.groups), 
            label: "Family"
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person), 
            label: "Profile")
        ],

      ),
    );
  }
}