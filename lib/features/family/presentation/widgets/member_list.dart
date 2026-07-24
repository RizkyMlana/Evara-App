import 'package:evara_app/features/family/presentation/widgets/member_tile.dart';
import 'package:flutter/material.dart';

class MemberList extends StatelessWidget{
  const MemberList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        MemberTile(
          name: "Mlaana", 
          role: "Owner"
        ),

        MemberTile(
          name: "John", 
          role: "Member",
        ),

        MemberTile(
          name: "Jane", 
          role: "Member",
        ),
        
        MemberTile(
          name: "Alice", 
          role: "Member",
        ),
      ],
    );
  }

}