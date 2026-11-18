import 'package:evently_c21_online/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppTheme {
  static ThemeData light = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent
    ),
      scaffoldBackgroundColor: AppColors.lightBg,
      primaryColor: AppColors.lightPrimary,
      primaryColorLight: AppColors.lightPrimary,
      primaryColorDark: Colors.white,
      dividerColor: Color(0xffF0F0F0),
      indicatorColor: Colors.white,
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
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              elevation: 0,
              textStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
              backgroundColor: AppColors.lightPrimary,
              padding: EdgeInsets.all(10.h),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.r)))),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(
            width: 0.5,
            color: Color(0xffF0F0F0),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(
            width: 0.5,
            color: Color(0xffF0F0F0),
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(
            width: 0.5,
            color: Color(0xffF0F0F0),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(
            width: 0.5,
            color: Color(0xffF0F0F0),
          ),
        ),
        filled: true,
        fillColor: Colors.white,
        hintStyle: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: Color(0xff686868)),
      ));
  static ThemeData dark = ThemeData(
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent
      ),
      scaffoldBackgroundColor: AppColors.darkBg,
      primaryColor: AppColors.darkPrimary,
      primaryColorLight: Colors.white,
      primaryColorDark: Color(0xff001440),
      dividerColor: Color(0xff002D8F),
      indicatorColor: Colors.white,
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
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              elevation: 0,
              textStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
              backgroundColor: AppColors.darkPrimary,
              padding: EdgeInsets.all(10.h),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.r)))),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(
            width: 0.5,
            color: Color(0xff002D8F),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(
            width: 0.5,
            color: Color(0xff002D8F),
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(
            width: 0.5,
            color: Color(0xff002D8F),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(
            width: 0.5,
            color: Color(0xff002D8F),
          ),
        ),
        filled: true,
        fillColor: Color(0xff001440),
        hintStyle: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: Color(0xffD6D6D6)),
      ));
}
