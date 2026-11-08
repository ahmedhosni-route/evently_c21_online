import 'package:evently_c21_online/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppTheme {
  static ThemeData light = ThemeData(
    scaffoldBackgroundColor: AppColors.lightBg,
    primaryColor: AppColors.lightPrimary,
    primaryColorLight: AppColors.lightPrimary,
    primaryColorDark: Colors.white,
    dividerColor: Color(0xffF0F0F0),
    textTheme: TextTheme(
      bodyMedium: TextStyle(
        color: AppColors.lightTextSecColor,
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
      ),
      titleLarge: TextStyle(
        color: AppColors.lightTextColor,
        fontSize: 20.sp,
        fontWeight: FontWeight.w600,
      ),
      titleMedium: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.lightPrimary,
      ),
    ),
  );
  static ThemeData dark = ThemeData(

    scaffoldBackgroundColor: AppColors.darkBg,
    primaryColor: AppColors.darkPrimary,
    primaryColorLight: Colors.white,
    primaryColorDark: Color(0xff001440),
    dividerColor: Color(0xff002D8F),
    textTheme: TextTheme(
      bodyMedium: TextStyle(
        color: AppColors.darkTextSecColor,
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
      ),
      titleLarge: TextStyle(
        color: AppColors.darkTextColor,
        fontSize: 20.sp,
        fontWeight: FontWeight.w600,
      ),
      titleMedium: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.darkPrimary,
      ),
    ),
  );
}
