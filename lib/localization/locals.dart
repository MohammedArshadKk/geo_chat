import 'package:flutter_localization/flutter_localization.dart';

List<MapLocale> locales = [
  const MapLocale('en', LocalsData.en),
  const MapLocale('es', LocalsData.es),
  const MapLocale('zh', LocalsData.zh),
  const MapLocale('mal', LocalsData.mal),
  const MapLocale('ar', LocalsData.ar),
  const MapLocale('hi', LocalsData.hi),
];

mixin LocalsData {
  static const String title = 'title';
  static const String subtitle = 'subtitle';
  static const String english = 'english';
  static const String spanish = 'spanish';
  static const String chinese = 'chinese';
  static const String malay = 'malay';
  static const String arabic = 'arabic';
  static const String hindi = 'hindi';
  static const String language = 'language';
  static const String generalSettings = 'generalSettings';
  static const String settings = 'settings';
  static const String policy = 'Policy';
  static const String readPolicy = 'readPolicy';

  static const Map<String, dynamic> en = {
    title: 'Chats',
    subtitle: 'Recent conversations',
    english: 'English',
    spanish: 'Spanish',
    chinese: 'Chinese',
    malay: 'Malayalam',
    arabic: 'Arabic',
    hindi: 'Hindi',
    language: 'Language',
    generalSettings: 'General Settings',
    settings: 'Settings',
    policy: 'Privacy Policy',
    readPolicy: 'Read our privacy policy',
  };

  static const Map<String, dynamic> es = {
    title: 'Charlas',
    subtitle: 'Conversaciones recientes',
    english: 'Inglés',
    spanish: 'Español',
    chinese: 'Chino',
    malay: 'Malayo',
    arabic: 'Árabe',
    hindi: 'Hindi',
    language: 'Idioma',
    generalSettings: 'Configuraciones Generales',
    settings: 'Configuraciones',
    policy: 'Política de Privacidad',
    readPolicy: 'Lee nuestra política de privacidad',
  };

  static const Map<String, dynamic> zh = {
    title: '聊天记录',
    subtitle: '最近的对话',
    english: '英语',
    spanish: '西班牙语',
    chinese: '中文',
    malay: '马来语',
    arabic: '阿拉伯语',
    hindi: '印地语',
    language: '语言',
    generalSettings: '通用设置',
    settings: '设置',
    policy: '隐私政策',
    readPolicy: '阅读我们的隐私政策',
  };

  static const Map<String, dynamic> mal = {
    title: 'ചാറ്റുകൾ',
    subtitle: 'സമീപകാല സംഭാഷണങ്ങൾ',
    english: 'ഇംഗ്ലീഷ്',
    spanish: 'സ്പാനിഷ്',
    chinese: 'ചൈനീസ്',
    malay: 'മലയാളം',
    arabic: 'അറബിക്',
    hindi: 'ഹിന്ദി',
    language: 'ഭാഷ',
    generalSettings: 'പൊതുവായ ക്രമീകരണങ്ങൾ',
    settings: 'ക്രമീകരണങ്ങൾ',
    policy: 'സ്വകാര്യതാ നയം',
    readPolicy: 'ഞങ്ങളുടെ സ്വകാര്യതാ നയം വായിക്കുക',
  };

  static const Map<String, dynamic> ar = {
    title: 'الدردشات',
    subtitle: 'المحادثات الأخيرة',
    english: 'إنجليزي',
    spanish: 'إسباني',
    chinese: 'صيني',
    malay: 'مالي',
    arabic: 'عربي',
    hindi: 'هندي',
    language: 'لغة',
    generalSettings: 'إعدادات عامة',
    settings: 'إعدادات',
    policy: 'سياسة الخصوصية',
    readPolicy: 'اقرأ سياسة الخصوصية الخاصة بنا',
  };

  static const Map<String, dynamic> hi = {
    title: 'चैट',
    subtitle: 'हाल की बातचीत',
    english: 'अंग्रेज़ी',
    spanish: 'स्पेनिश',
    chinese: 'चीनी',
    malay: 'मलय',
    arabic: 'अरबी',
    hindi: 'हिंदी',
    language: 'भाषा',
    generalSettings: 'सामान्य सेटिंग्स',
    settings: 'सेटिंग्स',
    policy: 'गोपनीयता नीति',
    readPolicy: 'हमारी गोपनीयता नीति पढ़ें',
  };
}
