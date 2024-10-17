  import 'package:firebase_auth/firebase_auth.dart';
  import 'package:flutter/material.dart';
  import 'package:geo_chat/controllers/auth_controller.dart';
  import 'package:geo_chat/utils/app_colors.dart';
  import 'package:geo_chat/views/screens/home_screen.dart';
  import 'package:geo_chat/views/widgets/custom_text.dart';
  import 'package:geo_chat/views/widgets/loading.dart';
  import 'package:provider/provider.dart';

  class LoginScreen extends StatelessWidget {
    const LoginScreen({super.key});

    @override
    Widget build(BuildContext context) {
      final authController = Provider.of<AuthController>(context);
      return Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            if (authController.isLoading) const Loading(),
            SafeArea(
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Column(
                    children: [
                      CustomText(
                        text: 'Geo Chat',
                        color: AppColors.secondaryColor,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      CustomText(
                        text: "Let's get Started",
                        color: AppColors.secondaryColor,
                        fontSize: 35,
                        fontWeight: FontWeight.w900,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColors.secondaryColor,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60))),
              child: Stack(children: [
                Align(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: GestureDetector(
                      onTap: () async {
                        try {
                          final User? user =
                              await authController.signInWithGoogle();
                          if (user != null) {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (ctx) => const HomeScreen()));
                          }
                        } catch (e) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: CustomText(text: e.toString())));
                        }
                      },
                      child: Container(
                        height: 70,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                                color: const Color.fromARGB(255, 196, 194, 194))),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 40, top: 18, bottom: 18),
                              child: Image.asset('assets/images/google.png'),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: CustomText(
                                text: 'continue with google',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                
              ]),
            ),
          ],
        ),
      );
    }
  }
