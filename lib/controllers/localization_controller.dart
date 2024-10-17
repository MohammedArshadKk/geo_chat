import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:geo_chat/localization/locals.dart';

class LocalizationController {
  configureLocalization(FlutterLocalization localization, Function(Locale?)? onTranslatedLanguage) {
    localization.init(mapLocales: locales, initLanguageCode: 'en');  
    localization.onTranslatedLanguage = onTranslatedLanguage;  
  }
}
