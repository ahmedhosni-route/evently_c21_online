import 'package:evently_c21_online/core/app_provider/app_provider.dart';
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
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.all(16),
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
              Text(
                "Personalize Your Experience",
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 8.h),
              Text(
                "Choose your preferred theme and language to get started with a comfortable, tailored experience that suits your style.",
                style: theme.textTheme.bodyMedium,
              ),
              SizedBox(height: 16.h),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Language",
                        style: theme.textTheme.titleMedium

                    ),
                  ),
                  SelectedWidget(text: "English"),
                  SizedBox(width: 8.w),
                  SelectedWidget(text: "Arabic", isSelected: false),
                ],
              ),
              SizedBox(height: 16.h),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Theme",
                      style: theme.textTheme.titleMedium
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      provider.changeTheme(ThemeMode.light);
                    },
                    child: SelectedWidget(
                      icon: "assets/images/sun.png",
                      isSelected: provider.themeMode == ThemeMode.light,
                    ),
                  ),
                  SizedBox(width: 8),
                  InkWell(
                    onTap: () {
                      provider.changeTheme(ThemeMode.dark);
                    },
                    child: SelectedWidget(
                      icon: "assets/images/moon.png",
                      isSelected: provider.themeMode == ThemeMode.dark,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
