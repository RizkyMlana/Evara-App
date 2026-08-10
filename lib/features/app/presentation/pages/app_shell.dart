import 'package:evara_app/core/router/routes.dart';
import 'package:evara_app/core/theme/app_colors.dart';
import 'package:evara_app/core/widgets/app_icon.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:evara_app/core/theme/app_icons.dart';

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
        child: AppIcon(
          asset: AppIcons.add,
          color: AppColors.primary,
          )
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

        destinations: [

          NavigationDestination(
            icon: AppIcon(
              asset : AppIcons.homeOutline,
              color: AppColors.primary,
              ),
            selectedIcon: AppIcon(
              asset: AppIcons.home,
              color: AppColors.primary,
              ),
            label: "Dashboard",
          ),

          NavigationDestination(
            icon: AppIcon(
              asset: AppIcons.receiptOutline,
              color: AppColors.primary,
              ),
            selectedIcon: AppIcon(
              asset: AppIcons.receipt,
              color: AppColors.primary,),
            label: "Transaction",
          ),

          NavigationDestination(
            icon: AppIcon(
              asset: AppIcons.groupOutline,
              color: AppColors.primary,
              ),
            selectedIcon: AppIcon(
              asset: AppIcons.group,
              color: AppColors.primary,
              ),
            label: "Family",
          ),

          NavigationDestination(
            icon: AppIcon(
              asset: AppIcons.personOutline,
              color: AppColors.primary,
              ),
            selectedIcon: AppIcon(
              asset: AppIcons.person,
              color: AppColors.primary,
              ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}