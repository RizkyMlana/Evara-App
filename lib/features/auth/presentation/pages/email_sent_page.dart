import 'package:evara_app/features/auth/widgets/email_sent_body.dart';
import 'package:flutter/material.dart';

class EmailSentPage extends StatelessWidget{
  const EmailSentPage({super.key});

  @override @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: EmailSentBody()
      ),
    );
  }
}