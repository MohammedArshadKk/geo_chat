import 'package:flutter/material.dart';
import 'package:geo_chat/core/theme/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData appTheme() {
  return ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.background,
    textTheme: GoogleFonts.jostTextTheme(),
  );
}
