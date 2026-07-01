import 'package:evara_app/core/router/app_router.dart';
import 'package:flutter/material.dart';

class EvaraApp extends StatelessWidget {
  const EvaraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Evara",
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)
      ),
    );
  }
}