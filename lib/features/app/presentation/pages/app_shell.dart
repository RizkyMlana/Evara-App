import 'package:evara_app/core/router/routes.dart';
import 'package:evara_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:evara_app/core/theme/app_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        child: SvgPicture.asset(
          AppIcons.add, 
          width: 24, 
          height: 24,
          colorFilter: const ColorFilter.mode(AppColors.primary, BlendMode.srcIn),
        ),
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
            icon: SvgPicture.asset(
              AppIcons.homeOutline,
              width: 24,
              height: 24,
              colorFilter: ColorFilter.mode(AppColors.primary, BlendMode.srcIn),
            ),
            selectedIcon: SvgPicture.asset(
              AppIcons.home,
              width: 24,
              height: 24,
              colorFilter: ColorFilter.mode(AppColors.primary, BlendMode.srcIn),
            ),
            label: "Dashboard",
          ),

          NavigationDestination(
            icon: SvgPicture.asset(
              AppIcons.receiptOutline,
              width: 24,
              height: 24,
              colorFilter: ColorFilter.mode(AppColors.primary, BlendMode.srcIn),
            ),
            selectedIcon: SvgPicture.asset(
              AppIcons.receipt,
              width: 24,
              height: 24,
              colorFilter: ColorFilter.mode(AppColors.primary, BlendMode.srcIn),
            ),
            label: "Transaction",
          ),

          NavigationDestination(
            icon: SvgPicture.asset(
              AppIcons.groupOutline,
              width: 24,
              height: 24,
              colorFilter: ColorFilter.mode(AppColors.primary, BlendMode.srcIn),
            ),
            selectedIcon: SvgPicture.asset(
              AppIcons.group,
              width: 24,
              height: 24,
              colorFilter: ColorFilter.mode(AppColors.primary, BlendMode.srcIn),
            ),
            label: "Family",
          ),

          NavigationDestination(
            icon: SvgPicture.asset(
              AppIcons.personOutline,
              width: 24,
              height: 24,
              colorFilter: ColorFilter.mode(AppColors.primary, BlendMode.srcIn),
            ),
            selectedIcon: SvgPicture.asset(
              AppIcons.person,
              width: 24,
              height: 24,
              colorFilter: ColorFilter.mode(AppColors.primary, BlendMode.srcIn),
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}