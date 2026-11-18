import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Toast {
  static show({required BuildContext context, required String title , ToastType type = ToastType.success}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        elevation: 0,
        backgroundColor:type == ToastType.success? Theme.of(context).primaryColor : Colors.red,
        behavior: SnackBarBehavior.floating,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.r)),
        content: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

enum ToastType{
  success,
  error
}
