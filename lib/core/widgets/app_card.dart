import 'package:evara_app/core/theme/app_radius.dart';
import 'package:evara_app/core/theme/app_shadow.dart';
import 'package:flutter/material.dart';

class AppCard extends StatelessWidget{
  const AppCard({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(16),
  });

  final Widget child;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppRadius.lg),
        boxShadow: AppShadow.card,
      ),
      child: child,
    );
  }
}