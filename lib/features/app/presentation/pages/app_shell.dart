import 'package:evara_app/core/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppShell extends StatelessWidget {
  final Widget child;

  const AppShell({
    super.key,
    required this.child,
  });

  int _calculateIndex(BuildContext context) {
    final location = GoRouterState.of(context).uri.toString();

    if (location.startsWith(AppRoutes.transaction)) return 1;
    if (location.startsWith(AppRoutes.family)) return 2;
    if (location.startsWith(AppRoutes.profile)) return 3;

    return 0;
  }

  @override
  Widget build(BuildContext context) {
    final currentIndex = _calculateIndex(context);

    return Scaffold(
      body: child,

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push(AppRoutes.addTransaction);
        },
        child: const Icon(Icons.add),
      ),

      floatingActionButtonLocation:
          FloatingActionButtonLocation.endFloat,

      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,

        onDestinationSelected: (index) {
          switch (index) {
            case 0:
              context.go(AppRoutes.dashboard);
              break;

            case 1:
              context.go(AppRoutes.transaction);
              break;

            case 2:
              context.go(AppRoutes.family);
              break;

            case 3:
              context.go(AppRoutes.profile);
              break;
          }
        },

        destinations: const [

          NavigationDestination(
            icon: Icon(Icons.dashboard_outlined),
            selectedIcon: Icon(Icons.dashboard),
            label: "Dashboard",
          ),

          NavigationDestination(
            icon: Icon(Icons.receipt_long_outlined),
            selectedIcon: Icon(Icons.receipt_long),
            label: "Transaction",
          ),

          NavigationDestination(
            icon: Icon(Icons.groups_outlined),
            selectedIcon: Icon(Icons.groups),
            label: "Family",
          ),

          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}