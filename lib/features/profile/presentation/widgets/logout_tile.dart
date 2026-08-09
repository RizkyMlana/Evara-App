import 'package:evara_app/core/theme/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LogoutTile extends StatelessWidget{
  const LogoutTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        AppIcons.logout,
        width: 24,
        height: 24,
        colorFilter: ColorFilter.mode(Colors.red, BlendMode.srcIn),
      ),
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