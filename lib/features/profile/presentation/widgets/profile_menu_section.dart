import 'package:evara_app/features/profile/presentation/widgets/profile_menu_tile.dart';
import 'package:flutter/material.dart';

class ProfileMenuSection extends StatelessWidget{
  const ProfileMenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ProfileMenuTile(
          icon: Icons.person_outline,
          title: "Edit Profile",
        ),

        ProfileMenuTile(
          icon: Icons.groups_outlined,
          title: "Family",
        ),

        ProfileMenuTile(
          icon: Icons.mail_outline,
          title: "Invitations",
        ),

        Divider(),

        ProfileMenuTile(
          icon: Icons.notifications_outlined,
          title: "Notifications",
        ),

        ProfileMenuTile(
          icon: Icons.info_outline,
          title: "About",
        ),
      ],
    );
  }
}