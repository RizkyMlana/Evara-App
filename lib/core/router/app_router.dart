import 'package:evara_app/features/auth/presentation/pages/login_page.dart';
import 'package:evara_app/features/auth/presentation/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'routes.dart';


final appRouter = GoRouter(
  initialLocation: AppRoutes.login,
  routes: [
    GoRoute(path: AppRoutes.login,
    builder: (context, state) {return const LoginPage();},
    ),
    GoRoute(
      path: AppRoutes.register,
      builder: (context, state) {
        return const RegisterPage();
      },
    ),
  ],
  errorBuilder: (context, state) {
    return const Scaffold(
      body: Center(
        child: Text('404 - Page not found'),
      ),
    );
  },
);