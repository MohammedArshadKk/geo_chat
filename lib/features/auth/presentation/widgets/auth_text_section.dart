import 'package:flutter/material.dart';

class AuthTextSection extends StatelessWidget {
  const AuthTextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding( 
          padding: const EdgeInsets.only(top: 48.0, bottom: 16.0),
          child: Text(
            'Welcome to Geo Chat',
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 40.0),
          child: Text(
            'Sign in to connect with people around the globe and spark real-time conversations.',
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16, color: Colors.black54),
          ),
        ),
      ],
    );
  }
}