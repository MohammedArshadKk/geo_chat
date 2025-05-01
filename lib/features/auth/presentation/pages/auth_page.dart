import 'package:flutter/material.dart';
import 'package:geo_chat/features/auth/presentation/widgets/auth_text_section.dart';
import 'package:geo_chat/features/auth/presentation/widgets/google_auth_button.dart';
import 'package:geo_chat/features/auth/presentation/widgets/profile_avatar_section.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              ProfileAvatarSection(),
              AuthTextSection(),
              GoogleAuthButton(),
            ],
          ),
        ),
      ),
    );
  }
}
