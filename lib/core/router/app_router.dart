import 'package:evara_app/core/router/routes.dart';
import 'package:evara_app/features/app/presentation/pages/app_shell.dart';
import 'package:evara_app/features/auth/presentation/pages/email_sent_page.dart';
import 'package:evara_app/features/auth/presentation/pages/forgot_password_page.dart';
import 'package:evara_app/features/auth/presentation/pages/login_page.dart';
import 'package:evara_app/features/auth/presentation/pages/register_page.dart';
import 'package:evara_app/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:evara_app/features/family/presentation/pages/create_family_page.dart';
import 'package:evara_app/features/family/presentation/pages/family_page.dart';
import 'package:evara_app/features/family/presentation/pages/join_family_page.dart';
import 'package:evara_app/features/invitation/presentation/pages/invitation_page.dart';
import 'package:evara_app/features/profile/presentation/pages/profile_page.dart';
import 'package:evara_app/features/transaction/presentation/pages/add_transaction_page.dart';
import 'package:evara_app/features/transaction/presentation/pages/transaction_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: AppRoutes.login,

  routes: [

    /// AUTH

    GoRoute(
      path: AppRoutes.login,
      builder: (_, _) => const LoginPage(),
    ),

    GoRoute(
      path: AppRoutes.register,
      builder: (_, _) => const RegisterPage(),
    ),

    GoRoute(
      path: AppRoutes.forgotPassword,
      builder: (_, _) => const ForgotPasswordPage(),
    ),

    GoRoute(
      path: AppRoutes.emailSent,
      builder: (_, _) => const EmailSentPage(),
    ),

    /// MAIN APP

    ShellRoute(
      builder: (context, state, child) {
        return AppShell(child: child);
      },

      routes: [

        GoRoute(
          path: AppRoutes.dashboard,
          builder: (_, _) => const DashboardPage(),
        ),

        GoRoute(
          path: AppRoutes.transaction,
          builder: (_, _) => const TransactionPage(),
        ),

        GoRoute(
          path: AppRoutes.family,
          builder: (_, _) => const FamilyPage(),
        ),

        GoRoute(
          path: AppRoutes.profile,
          builder: (_, _) => const ProfilePage(),
        ),
      ],
    ),

    /// TRANSACTION

    GoRoute(
      path: AppRoutes.addTransaction,
      builder: (_, _) => const AddTransactionPage(),
    ),

    /// FAMILY

    GoRoute(
      path: AppRoutes.createFamily,
      builder: (_, _) => const CreateFamilyPage(),
    ),

    GoRoute(
      path: AppRoutes.joinFamily,
      builder: (_, _) => const JoinFamilyPage(),
    ),

    /// INVITATION

    GoRoute(
      path: AppRoutes.invitation,
      builder: (_, _) => const InvitationPage(),
    ),
  ],

  errorBuilder: (_, _) {
    return const Scaffold(
      body: Center(
        child: Text("404 - Page Not Found"),
      ),
    );
  },
);