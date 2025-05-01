import 'package:flutter/material.dart';
import 'package:geo_chat/core/theme/app_colors.dart';
import 'package:geo_chat/core/theme/app_images.dart';

class ProfileAvatarSection extends StatelessWidget {
  const ProfileAvatarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.avatarBackground,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: ClipOval(
            child: Image.asset(
              AppImages.avatar,
              width: 300,
              height: 300,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return const Icon(
                  Icons.person,
                  size: 40,
                  color: Colors.black45,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}