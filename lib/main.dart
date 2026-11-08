import 'package:evently_c21_online/core/app_provider/app_provider.dart';
import 'package:evently_c21_online/core/theme/app_colors.dart';
import 'package:evently_c21_online/core/theme/app_theme.dart';
import 'package:evently_c21_online/modules/splash/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return ChangeNotifierProvider(
          create: (context) => AppProvider(),
          builder: (context, child) {
            var provider = Provider.of<AppProvider>(context);
            return MaterialApp(
              themeMode: provider.themeMode,
              theme: AppTheme.light,
              darkTheme: AppTheme.dark,
              home: SplashScreen(),
            );
          },
        );
      },
    );
  }
}
