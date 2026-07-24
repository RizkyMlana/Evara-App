import 'package:evara_app/core/theme/app_spacing.dart';
import 'package:evara_app/features/profile/presentation/widgets/logout_tile.dart';
import 'package:evara_app/features/profile/presentation/widgets/profile_header.dart';
import 'package:evara_app/features/profile/presentation/widgets/profile_menu_section.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget{
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(Spacing.lg),
          children: const [
            ProfileHeader(),
            SizedBox(height: Spacing.xl,),
            ProfileMenuSection(),
            SizedBox(height: Spacing.xl,),
            LogoutTile(),
          ],
        )
      ),
    );
  }
}