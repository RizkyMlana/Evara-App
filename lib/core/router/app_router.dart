import 'package:evara_app/features/app/presentation/pages/app_shell.dart';
import 'package:evara_app/features/auth/presentation/pages/email_sent_page.dart';
import 'package:evara_app/features/auth/presentation/pages/forgot_password_page.dart';
import 'package:evara_app/features/auth/presentation/pages/login_page.dart';
import 'package:evara_app/features/auth/presentation/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'routes.dart';


final appRouter = GoRouter(
  initialLocation: AppRoutes.login,
  routes: [
    GoRoute(
      path: AppRoutes.login,
      builder: (context, state) {
      return const LoginPage();
      },
    ),
    GoRoute(
      path: AppRoutes.register,
      builder: (context, state) {
        return const RegisterPage();
      },
    ),
    GoRoute(
      path: AppRoutes.forgotPassword,
      builder: (context, state) {
        return const ForgotPasswordPage();
      }
    ),
    GoRoute(
      path: AppRoutes.emailSent,
      builder: (context, state) {
        return const EmailSentPage();
      }
    ),
    GoRoute(
      path: AppRoutes.home,
      builder: (context, state) => const AppShell(),
    )

  ],
  errorBuilder: (context, state) {
    return const Scaffold(
      body: Center(
        child: Text('404 - Page not found'),
      ),
    );
  },
);