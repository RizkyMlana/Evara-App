import 'package:flutter/material.dart';

class MemberTile extends StatelessWidget{
  final String name;
  final String role;
  final bool isOwner;

  const MemberTile({
    super.key,
    required this.name,
    required this.role,
    this.isOwner = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        child: Text(name[0]),
      ),
      title: Text(name),
      subtitle: Text(role),
      trailing: isOwner ? const Icon(
        Icons.workspace_premium,
        color: Colors.amber,
      ) : null,

    );
  }
}