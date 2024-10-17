import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:geo_chat/controllers/auth_controller.dart';
import 'package:geo_chat/controllers/localization_controller.dart';
import 'package:geo_chat/firebase_options.dart';
import 'package:geo_chat/utils/app_colors.dart';
import 'package:geo_chat/views/screens/login_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
  const projectUrl = "https://tqnzahnzjzfmzuoogbmd.supabase.co";
  await Supabase.initialize(
      url: projectUrl, anonKey: dotenv.env['supabaseKey']!);

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final FlutterLocalization localization = FlutterLocalization.instance;
  final LocalizationController controller = LocalizationController();
  @override
  void initState() {
    controller.configureLocalization(localization, onTranslatedLanguage);

    super.initState();
  }

  onTranslatedLanguage(Locale? locale) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthController()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: AppColors.primaryColor,
          appBarTheme: AppBarTheme(color: AppColors.primaryColor),
          textTheme: GoogleFonts.interTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        supportedLocales: localization.supportedLocales,
        localizationsDelegates: localization.localizationsDelegates,
        home: LoginScreen(),
      ),
    );
  }
}
