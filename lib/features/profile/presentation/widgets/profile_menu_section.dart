import 'package:evara_app/core/theme/app_icons.dart';
import 'package:evara_app/features/profile/presentation/widgets/profile_menu_tile.dart';
import 'package:flutter/material.dart';

class ProfileMenuSection extends StatelessWidget{
  const ProfileMenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ProfileMenuTile(
          icon: AppIcons.personOutline,
          title: "Edit Profile",
        ),

        ProfileMenuTile(
          icon: AppIcons.groupOutline,
          title: "Family",
        ),

        ProfileMenuTile(
          icon: AppIcons.invite,
          title: "Invitations",
        ),

        Divider(),

        ProfileMenuTile(
          icon: AppIcons.notificationOutline,
          title: "Notifications",
        ),

        ProfileMenuTile(
          icon: AppIcons.info,
          title: "About",
        ),
      ],
    );
  }
}