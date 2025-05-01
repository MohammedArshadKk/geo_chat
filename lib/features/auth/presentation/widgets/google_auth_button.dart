import 'package:flutter/material.dart';
import 'package:geo_chat/core/theme/app_colors.dart';
import 'package:geo_chat/core/theme/app_images.dart';

class GoogleAuthButton extends StatelessWidget {
  const GoogleAuthButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      margin: const EdgeInsets.only(bottom: 48.0),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(width: 10),
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: AppColors.background,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Image.asset(AppImages.googleLogo, width: 30, height: 30),
            ),
          ),
          const SizedBox(width: 10),
          const Text(
            'Authenticate with Google',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          const Icon(Icons.double_arrow, color: Colors.white, size: 17),
        ],
      ),
    );
  }
}
