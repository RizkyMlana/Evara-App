import 'package:evara_app/core/theme/app_colors.dart';
import 'package:evara_app/core/widgets/app_icon.dart';
import 'package:flutter/material.dart';

class ProfileMenuTile extends StatelessWidget{
  final String icon;
  final String title;
  final VoidCallback? onTap;

  const ProfileMenuTile({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: AppIcon(asset: icon, color: AppColors.primary),
      title: Text(title),
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }
}