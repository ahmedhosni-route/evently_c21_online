import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme/app_colors.dart';

class SelectedWidget extends StatelessWidget {
  String? text;
  String? icon;
  bool isSelected;
  SelectedWidget({super.key, this.text, this.isSelected = true, this.icon});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      height: 32.h,
      padding: EdgeInsets.only(top: 4.h, bottom: 4.h, right: 16.w, left: 16.w),
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
          color: theme.dividerColor
        ),
        borderRadius: BorderRadius.circular(8.r),
        color: isSelected ? theme.primaryColor : theme.primaryColorDark,
      ),
      child: text == null
          ? Padding(
              padding: EdgeInsets.only(left: 10.w, right: 10.w),
              child: Image.asset(
                icon!,
                color: isSelected ? Colors.white : theme.primaryColorLight,
                width: 24.w,
                height: 24.h,
              ),
            )
          : Center(
              child: Text(
                text!,
                style: TextStyle(
                  color: isSelected ? Colors.white : theme.primaryColorLight,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
    );
  }
}
