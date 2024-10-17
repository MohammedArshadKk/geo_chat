import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:geo_chat/localization/locals.dart';
import 'package:geo_chat/utils/app_colors.dart';
import 'package:geo_chat/views/widgets/custom_text.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String _selectedLanguage = 'English';
  late FlutterLocalization localization;
  late String currentLocale;
  @override
  void initState() {
    localization = FlutterLocalization.instance;
    currentLocale = localization.currentLocale!.languageCode;
    log(currentLocale);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        iconTheme: IconThemeData(color: AppColors.secondaryColor),
        title: CustomText(
          text: context.formatString(LocalsData.settings, []), 
          color: AppColors.secondaryColor,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
      ),
      body: Container(
        color: AppColors.secondaryColor,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: context.formatString(LocalsData.generalSettings, []), 
                color: AppColors.primaryColor,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 16),
              _buildSettingsCard(
                icon: Icons.language,
                title: context.formatString(LocalsData.language, []),
                subtitle: LocalsData.title.getString(context),  
                onTap: _showLanguageDialog,
              ),
              const SizedBox(height: 16),
              _buildSettingsCard(
                icon: Icons.privacy_tip,
                title: context.formatString(LocalsData.policy, []), 
                subtitle: context.formatString(LocalsData.readPolicy, []), 
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Opening Privacy Policy...')),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSettingsCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: AppColors.primaryColor.withOpacity(0.1),
          child: Icon(icon, color: AppColors.primaryColor),
        ),
        title: CustomText(
          text: title,
          color: Colors.black87,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        subtitle: CustomText(
          text: subtitle,
          color: Colors.black54,
          fontSize: 14,
        ),
        trailing: Icon(Icons.arrow_forward_ios,
            size: 16, color: AppColors.primaryColor),
        onTap: onTap,
      ),
    );
  }

  void _showLanguageDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: CustomText(
            text: 'Select Language',
            color: AppColors.primaryColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                'English',
                'Spanish',
                'Chinese',
                'Malayalam',
                'Arabic',
                'Hindi'
              ]
                  .map((String language) => RadioListTile<String>(
                        title: CustomText(text: language),
                        value: language,
                        groupValue: _selectedLanguage,
                        activeColor: AppColors.primaryColor,
                        onChanged: (String? value) {
                          setState(() {
                            _selectedLanguage = value!;
                          });
                          setLocale(_selectedLanguage);
                          Navigator.of(context).pop();
                        },
                      ))
                  .toList(),
            ),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        );
      },
    );
  }

  setLocale(String? selectedLanguage) {
    if (selectedLanguage == null) return;
    if (selectedLanguage == 'English') {
      localization.translate('en');
    } else if (selectedLanguage == 'Spanish') {
      localization.translate('es');
    } else if (selectedLanguage == 'Chinese') {
      localization.translate('zh');
    } else if (selectedLanguage == 'Malayalam') {
      localization.translate('mal');
    } else if (selectedLanguage == 'Arabic') {
      localization.translate('ar');
    } else if (selectedLanguage == 'Hindi') {
      localization.translate('hi');
    } else {
      return;
    }
    setState(() {
      currentLocale = selectedLanguage;
    });
  } 
}
