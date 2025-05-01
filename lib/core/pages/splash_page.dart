import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:geo_chat/core/theme/app_colors.dart';
import 'package:geo_chat/core/theme/app_images.dart';
import 'package:geo_chat/core/widgets/custom_text.dart';
import 'package:geo_chat/features/auth/presentation/pages/auth_page.dart';
import 'package:page_transition/page_transition.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        PageTransition(
          type: PageTransitionType.rightToLeft,
          childBuilder: (context) => AuthPage(),
          duration: Duration(milliseconds: 500),
        ),
      );
    });
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImages.splashLogo),
            CustomText(
              text: 'GeoChat',
              color: AppColors.textSecondary,
              fontSize: 39,
            ),
            SizedBox(height: 400),
            SpinKitWave(color: AppColors.cardBackground, size: 30),
          ],
        ),
      ),
    );
  }
}
