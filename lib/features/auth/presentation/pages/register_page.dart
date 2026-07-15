
import 'package:evara_app/features/auth/widgets/register_form.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget{
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: RegisterForm(),
      ),
    );
  }
}