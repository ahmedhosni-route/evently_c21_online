import 'package:evently_c21_online/core/app_provider/app_provider.dart';
import 'package:evently_c21_online/l10n/app_localizations.dart';
import 'package:evently_c21_online/modules/auth/screens/login_screen.dart';
import 'package:evently_c21_online/modules/start/widgets/selected_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppProvider>(context);
    var theme = Theme.of(context);
    var locale = AppLocalizations.of(context)!;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  "assets/logo/logo.png",
                  width: 142.w,
                  color: theme.primaryColor,
                ),
              ),
              SizedBox(height: 24.h),
              Center(
                child: Image.asset(
                  "assets/images/start_image.png",
                  width: 343.w,
                  color: theme.primaryColorLight,
                ),
              ),
              SizedBox(height: 24.h),
              Text(locale.startTitle, style: theme.textTheme.titleLarge),
              SizedBox(height: 8.h),
              Text(locale.startDesc, style: theme.textTheme.bodyMedium),
              SizedBox(height: 16.h),

              // Language Selector Row
              Row(
                children: [
                  Expanded(
                    child: Text(
                      locale.language,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      provider.changeLanguage("en");
                    },
                    child: SelectedWidget(
                      text: locale.english,
                      isSelected: provider.langCode == "en",
                    ),
                  ),
                  SizedBox(width: 8.w),
                  InkWell(
                    onTap: () {
                      provider.changeLanguage("ar");
                    },
                    child: SelectedWidget(
                      text: locale.arabic,
                      isSelected: provider.langCode == "ar",
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),

              // Theme Selector Row
              Row(
                children: [
                  Expanded(
                    child: Text(
                      locale.theme,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  InkWell(
                    onTap: () => provider.changeTheme(ThemeMode.light),
                    child: SelectedWidget(
                      icon: "assets/images/sun.png",
                      isSelected: provider.themeMode == ThemeMode.light,
                    ),
                  ),
                  SizedBox(width: 8.w),
                  InkWell(
                    onTap: () => provider.changeTheme(ThemeMode.dark),
                    child: SelectedWidget(
                      icon: "assets/images/moon.png",
                      isSelected: provider.themeMode == ThemeMode.dark,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24.h),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                      return LoginScreen();
                    },));
                  },
                  child: Center(
                    child: Text(
                      "Let’s start",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
