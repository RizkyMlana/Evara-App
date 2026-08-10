import 'package:evara_app/core/theme/app_icons.dart';
import 'package:evara_app/core/widgets/app_icon.dart';
import 'package:flutter/material.dart';

class LogoutTile extends StatelessWidget{
  const LogoutTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: AppIcon(asset: AppIcons.logout, color: Colors.red,),
      title: const Text(
        "Logout",
        style: TextStyle(
          color: Colors.red,
        ),
      ),
      onTap: () {},
    );
  }
}